//
//  FlowController.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import UIKit

/// Describes class managing part of application flow.
// sourcery: AutoMockable
protocol FlowController: AnyObject {
    /// Parent of the flow controller.
    var parent: FlowController? { get set }

    /// FlowControllers presented by this FlowController
    var children: [FlowController] { get set }

    /// Navigation start of flow controller.
    var navigationController: NavigationController { get }

    /// Represents ViewController that is currently presented.
    var currentViewController: UIViewController? { get }

    /// Transition that was used to present the flow controller.
    var presentation: FlowControllerPresentation { get }

    /// Present FlowController.
    func present()

    /// Adds flow controller to children array.
    ///
    /// - Parameters:
    ///   - flowController: flow controller to be added.
    func add(flowController: FlowController)

    /// Removes currently presented flow controller.
    func removeFlowController()
}

// MARK: - Default Implementation

extension FlowController {
    var currentViewController: UIViewController? {
        navigationController.viewControllers.last
    }

    func add(flowController: FlowController) {
        switch flowController.presentation {
        case .modal:
            ensureMainThread {
                self.navigationController.present(navigationController: flowController.navigationController, animated: true, completion: nil)
            }
        case .push:
            ensureMainThread {
                self.navigationController.push(navigationController: flowController.navigationController, animated: true)
            }
        case .root:
            children.forEach { $0.removeFlowController() }
        }
        children.append(flowController)
        flowController.parent = self
    }

    func removeFlowController() {
        guard let parentFlowController = parent else {
            return
        }
        parentFlowController.children.removeAll(where: { $0 === self })
        ensureMainThread {
            switch self.presentation {
            case .modal:
                self.navigationController.dismiss(animated: true, completion: nil)
            case .push:
                guard let parentCurrentViewController = parentFlowController.currentViewController else {
                    return
                }
                self.navigationController.popToViewController(parentCurrentViewController, animated: true)
            case .root:
                break
            }
        }
    }
}
