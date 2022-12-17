//
//  MainFlowControllerElementsFactory.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import Foundation

// sourcery: AutoMockable
protocol MainFlowControllerElementsFactory {
    func createLoginFlowController(navigationController: NavigationController, onLoggedIn: @escaping () -> Void) -> FlowController
    func createMainFlowController(navigationController: NavigationController, onLogout: @escaping () -> Void) -> FlowController
}

final class MainFlowControllerElementsFactoryImpl: MainFlowControllerElementsFactory {
    func createLoginFlowController(navigationController: NavigationController, onLoggedIn: @escaping () -> Void) -> FlowController {
        ExampleFlowController(navigationController: navigationController)
    }

    func createMainFlowController(navigationController: NavigationController, onLogout: @escaping () -> Void) -> FlowController {
        ExampleFlowController(navigationController: navigationController)
    }
}

private final class ExampleFlowController: FlowController {
    var parent: FlowController?
    var children: [FlowController] = []

    let presentation: FlowControllerPresentation = .root
    let navigationController: NavigationController

    init(navigationController: NavigationController) {
        self.navigationController = navigationController
    }

    func present() {}
}
