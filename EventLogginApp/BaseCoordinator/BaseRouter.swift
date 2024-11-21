//
//  BaseRouter.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

class BaseRouter: RouterContract {

    private var children: [RouterContract] = []
    var navigationController: UINavigationController
    weak var parentCoordinator: RouterContract?
    private var navigationStack: [UIViewController] = []
    var onCompleted: (() -> Void)?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // Method to start the navigation process (should be implemented by child classes)
    func start() {
        fatalError("Children should implement `start`.")
    }

    // Show a view controller and push it onto the navigation stack
    func show(_ viewController: UIViewController, animated: Bool = true) {
        navigationController.pushViewController(viewController, animated: animated)
        navigationStack.append(viewController)
    }

    // Pop the top view controller from the navigation stack
    func pop() {
        navigationController.popViewController(animated: true)
        if navigationStack.count > 0 {
            navigationStack.removeLast()
        }
        removeCoordinatorIfNeeded()
    }

    // Pop to the root view controller and clear the navigation stack
    func popToRoot(withAnimation: Bool = true) {
        self.navigationController.popToRootViewController(animated: withAnimation)
        navigationStack.removeAll()
        removeCoordinatorIfNeeded()
    }

    // Pop to a specific view controller in the stack
    func popTo(_ viewController: UIViewController) {
        let stack = navigationController.viewControllers
        if let index = stack.lastIndex(of: viewController) {
            navigationController.popToViewController(viewController, animated: true)
            if navigationStack.indices.contains(index) {
                navigationStack.removeLast(index)
            }
            removeCoordinatorIfNeeded()
        }
    }

    // Pop to a view controller of a specific class type
    func popToVC(ofClass: AnyClass, animated: Bool = true) {
        let stack = navigationController.viewControllers
        if let viewcontroller = stack.last(where: { $0.isKind(of: ofClass) }) {
            navigationController.popToViewController(viewcontroller, animated: true)
            removeCoordinatorIfNeeded()
        }
    }

    // Removes the coordinator if the navigation stack is empty
    private func removeCoordinatorIfNeeded() {
        if navigationStack.isEmpty {
            parentCoordinator?.free(coordinator: self)
        }
    }

    // Store a child coordinator
    func store(coordinator: RouterContract) {
        children.append(coordinator)
    }

    // Free a child coordinator
    func free(coordinator: RouterContract) {

        if let index = children.firstIndex( where: { $0 === coordinator }) {
        children.remove(at: index)
        }
    }

}

// MARK: - get the Viewcontroller from navigation stack
extension BaseRouter {

    // Retrieve a specific view controller from the stack by its type
    func getViewcontroller<T: UIViewController>( controller: T.Type) -> T? {
        let stack = navigationController.viewControllers
        return stack.filter({ $0 is T }).first as? T
    }

    // Instantiate a view controller from a storyboard by its identifier
    func viewControllerWithIdentifier(storyboardName: String, viewControllerId: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController =
            storyboard.instantiateViewController(withIdentifier: viewControllerId)
        return viewController
    }
}
