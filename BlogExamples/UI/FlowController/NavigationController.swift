//
//  NavigationController.swift
//  BlogExamples
//
//  Created by Karol Piatek on 12/12/2022.
//

import UIKit

/// Wrapper for UINavigationController methods used in FlowController
// sourcery: AutoMockable
protocol NavigationController: AnyObject {
    var viewControllers: [UIViewController] { get set }
    var modalPresentationStyle: UIModalPresentationStyle { get set }

    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func present(navigationController: NavigationController, animated flag: Bool, completion: (() -> Void)?)
    func push(navigationController: NavigationController, animated: Bool)
    func setViewControllers(_ viewControllers: [UIViewController], animated: Bool)
    func dismiss(animated flag: Bool, completion: (() -> Void)?)

    @discardableResult func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
}

// MARK: - UINavigationController + NavigationController

extension UINavigationController: NavigationController {
    func present(navigationController: NavigationController, animated flag: Bool, completion: (() -> Void)?) {
        guard let viewControllerToPresent = navigationController as? UIViewController else {
            // Cannot present NavigationController that does not conform to UIViewController
            return
        }
        present(viewControllerToPresent, animated: flag, completion: completion)
    }

    func push(navigationController: NavigationController, animated: Bool) {
        guard let viewController = navigationController as? UIViewController else {
            // Cannot push NavigationController that does not conform to UIViewController
            return
        }
        pushViewController(viewController, animated: animated)
    }
}
