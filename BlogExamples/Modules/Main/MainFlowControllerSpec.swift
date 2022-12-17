//
//  MainFlowControllerSpec.swift
//  BlogExamplesTests
//
//  Created by Karol Piatek on 12/12/2022.
//

import UIKit

import Nimble
import Quick
import SwiftyMocky

@testable import BlogExamples

final class MainFlowControllerSpec: QuickSpec {
    override func spec() {
        describe("MainFlowController") {
            var navigationController: NavigationControllerMock!
            var flowControllerElementsFactory: MainFlowControllerElementsFactoryMock!
            var userService: UserServiceMock!
            var sut: MainFlowController!

            beforeEach {
                navigationController = NavigationControllerMock()
                flowControllerElementsFactory = MainFlowControllerElementsFactoryMock()
                userService = UserServiceMock()
                sut = MainFlowControllerImpl(
                    mainFlowControllerElementsFactory: flowControllerElementsFactory,
                    navigationController: navigationController,
                    userService: userService
                )
            }

            describe("present()") {
                context("when user isLoggedIn is false") {
                    var loginFlowController: FlowControllerMock!
                    var onLoggedIn: (() -> Void)!

                    beforeEach {
                        loginFlowController = FlowControllerMock()
                        loginFlowController.given(.presentation(getter: .root))
                        flowControllerElementsFactory.given(.createLoginFlowController(navigationController: .any, onLoggedIn: .any, willReturn: loginFlowController))
                        flowControllerElementsFactory.perform(
                            .createLoginFlowController(
                                navigationController: .any,
                                onLoggedIn: .any,
                                perform: { _, handler in
                                    onLoggedIn = handler
                                }
                            )
                        )
                        userService.given(.isLoggedIn(getter: false))
                        sut.present()
                    }

                    it("should call createLoginViewController") {
                        flowControllerElementsFactory.verify(.createLoginFlowController(navigationController: .any, onLoggedIn: .any))
                    }

                    it("should present loginFlowController") {
                        loginFlowController.verify(.present())
                    }

                    context("when onLoggedIn called") {
                        var mainFlowController: FlowControllerMock!

                        beforeEach {
                            mainFlowController = FlowControllerMock()
                            mainFlowController.given(.presentation(getter: .root))
                            flowControllerElementsFactory.given(
                                .createMainFlowController(
                                    navigationController: .any,
                                    onLogout: .any,
                                    willReturn: mainFlowController
                                )
                            )
                            onLoggedIn()
                        }

                        it("should call createMainFlowController") {
                            flowControllerElementsFactory.verify(
                                .createMainFlowController(
                                    navigationController: .any,
                                    onLogout: .any
                                )
                            )
                        }

                        it("should present mainFlowController") {
                            mainFlowController.verify(.present())
                        }
                    }
                }

                context("when user isLoggedIn is true") {
                    var mainFlowController: FlowControllerMock!
                    var onLogout: (() -> Void)!

                    beforeEach {
                        mainFlowController = FlowControllerMock()
                        mainFlowController.given(.presentation(getter: .root))
                        flowControllerElementsFactory.given(
                            .createMainFlowController(
                                navigationController: .any,
                                onLogout: .any,
                                willReturn: mainFlowController
                            )
                        )
                        flowControllerElementsFactory.perform(
                            .createMainFlowController(
                                navigationController: .any,
                                onLogout: .any,
                                perform: { _, handler in
                                    onLogout = handler
                                }
                            )
                        )
                        userService.given(.isLoggedIn(getter: true))
                        sut.present()
                    }

                    it("should call createMainFlowController") {
                        flowControllerElementsFactory.verify(.createMainFlowController(navigationController: .any, onLogout: .any))
                    }

                    it("should present mainFlowController") {
                        mainFlowController.verify(.present())
                    }

                    context("when onLogout called") {
                        var flowControllerMock: FlowControllerMock!

                        beforeEach {
                            flowControllerMock = FlowControllerMock()
                            flowControllerMock.given(.presentation(getter: .root))
                            flowControllerElementsFactory.given(
                                .createLoginFlowController(
                                    navigationController: .any,
                                    onLoggedIn: .any,
                                    willReturn: flowControllerMock
                                )
                            )
                            onLogout()
                        }

                        it("should present login") {
                            flowControllerElementsFactory.verify(
                                .createLoginFlowController(
                                    navigationController: .any,
                                    onLoggedIn: .any
                                )
                            )
                        }
                    }
                }
            }
        }
    }
}
