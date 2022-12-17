//
//  FlowControllerSpec.swift
//  BlogExamplesTests
//
//  Created by Karol Piatek on 12/12/2022.
//

import Nimble
import Quick
import UIKit

@testable import BlogExamples

final class FlowControllerSpec: QuickSpec {
    override func spec() {
        describe("FlowController") {
            var navigationControllerMock: NavigationControllerMock!
            var sut: FlowController!

            beforeEach {
                navigationControllerMock = NavigationControllerMock()
                sut = TestFlowController(
                    navigationController: navigationControllerMock,
                    presentation: .push
                )
            }

            describe("currentViewController") {
                context("when navigationController has no viewControllers") {
                    beforeEach {
                        navigationControllerMock.given(.viewControllers(getter: []))
                    }

                    it("should return nil") {
                        expect(sut.currentViewController).to(beNil())
                    }
                }

                context("when navigationController has viewControllers") {
                    var lastViewController: UIViewController!

                    beforeEach {
                        lastViewController = UIViewController()
                        let viewControllers: [UIViewController] = (0...10).map { _ in UIViewController() }
                        navigationControllerMock.given(.viewControllers(getter: viewControllers + [lastViewController]))
                    }

                    it("should return lastViewController") {
                        expect(sut.currentViewController).to(beIdenticalTo(lastViewController))
                    }
                }
            }

            context("when added FlowController has modal presentation") {
                var addNavigationControllerMock: NavigationControllerMock!
                var addFlowController: TestFlowController!

                beforeEach {
                    addNavigationControllerMock = NavigationControllerMock()
                    addFlowController = TestFlowController(
                        navigationController: addNavigationControllerMock,
                        presentation: .modal
                    )
                }

                describe("add(flowController:)") {
                    beforeEach {
                        sut.add(flowController: addFlowController)
                    }

                    it("should add one flowController to children") {
                        expect(sut.children.count).to(equal(1))
                    }

                    it("should add flowController to children") {
                        expect(sut.children.first).to(beIdenticalTo(addFlowController))
                    }

                    it("should call present") {
                        navigationControllerMock.verify(
                            .present(
                                navigationController: .matching { $0 === addFlowController.navigationController },
                                animated: .value(true),
                                completion: .any
                            )
                        )
                    }

                    describe("removeFlowController()") {
                        beforeEach {
                            addFlowController.removeFlowController()
                        }

                        it("should remove self from parent children") {
                            expect(sut.children.count).to(equal(0))
                        }

                        it("should call dismiss") {
                            addNavigationControllerMock.verify(
                                .dismiss(
                                    animated: .value(true),
                                    completion: .any
                                )
                            )
                        }
                    }
                }
            }

            context("when added FlowController has push presentation") {
                var addNavigationControllerMock: NavigationControllerMock!
                var addFlowController: TestFlowController!

                beforeEach {
                    addNavigationControllerMock = NavigationControllerMock()
                    addFlowController = TestFlowController(
                        navigationController: addNavigationControllerMock,
                        presentation: .push
                    )
                    sut.add(flowController: addFlowController)
                }

                it("should add one flowController to children") {
                    expect(sut.children.count).to(equal(1))
                }

                it("should add flowController to children") {
                    expect(sut.children.first).to(beIdenticalTo(addFlowController))
                }

                it("should call present") {
                    navigationControllerMock.verify(
                        .push(
                            navigationController: .matching { $0 === addFlowController.navigationController },
                            animated: .value(true)
                        )
                    )
                }

                describe("removeFlowController()") {
                    context("when parent navigationController has viewControllers") {
                        var parentLastViewController: UIViewController!

                        beforeEach {
                            parentLastViewController = UIViewController()
                            navigationControllerMock.given(.viewControllers(getter: [parentLastViewController]))
                            addFlowController.removeFlowController()
                        }

                        it("should remove self from parent children") {
                            expect(sut.children.count).to(equal(0))
                        }

                        it("should call popToViewController with currentViewController") {
                            addNavigationControllerMock.verify(
                                .popToViewController(
                                    .matching { $0 === parentLastViewController },
                                    animated: .value(true)
                                )
                            )
                        }
                    }

                    context("when parent navigationController has no viewControllers") {
                        beforeEach {
                            navigationControllerMock.given(.viewControllers(getter: []))
                            addFlowController.removeFlowController()
                        }

                        it("should remove self from parent children") {
                            expect(sut.children.count).to(equal(0))
                        }

                        it("should call popToViewController with currentViewController") {
                            addNavigationControllerMock.verify(
                                .popToViewController(
                                    .any,
                                    animated: .any
                                ),
                                count: 0
                            )
                        }
                    }
                }
            }
        }
    }
}

private final class TestFlowController: FlowController {
    var parent: FlowController?
    var children: [FlowController] = []

    let navigationController: NavigationController
    let presentation: FlowControllerPresentation

    init(
        navigationController: NavigationController,
        presentation: FlowControllerPresentation
    ) {
        self.navigationController = navigationController
        self.presentation = presentation
    }

    func present() {}
}
