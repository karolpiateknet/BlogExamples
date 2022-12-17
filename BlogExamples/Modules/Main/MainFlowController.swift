//
//  MainFlowController.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import UIKit

protocol MainFlowController: FlowController {}

final class MainFlowControllerImpl: MainFlowController {
    weak var parent: FlowController?
    var children: [FlowController] = []

    let navigationController: NavigationController
    let presentation: FlowControllerPresentation = .root

    private let mainFlowControllerElementsFactory: MainFlowControllerElementsFactory
    private let userService: UserService

    init(
        mainFlowControllerElementsFactory: MainFlowControllerElementsFactory,
        navigationController: NavigationController,
        userService: UserService
    ) {
        self.mainFlowControllerElementsFactory = mainFlowControllerElementsFactory
        self.navigationController = navigationController
        self.userService = userService
    }

    func present() {
        if userService.isLoggedIn {
            showMainScreen()
        } else {
            showLogin()
        }
    }

    func onLogout() {
        showLogin()
    }
}

// MARK: - Private

private extension MainFlowControllerImpl {
    func showLogin() {
        let flowController = mainFlowControllerElementsFactory.createLoginFlowController(
            navigationController: navigationController,
            onLoggedIn: { [weak self] in
                self?.showMainScreen()
            }
        )
        add(flowController: flowController)
        flowController.present()
    }

    func showMainScreen() {
        let flowController = mainFlowControllerElementsFactory.createMainFlowController(
            navigationController: navigationController,
            onLogout: { [weak self] in
                self?.onLogout()
            }
        )
        add(flowController: flowController)
        flowController.present()
    }
}
