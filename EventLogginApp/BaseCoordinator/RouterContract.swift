//
//  RouterContract.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

protocol RouterContract: AnyObject {
    var navigationController: UINavigationController { get }
    var parentCoordinator: RouterContract? { get }

    func start()
    /// Navigation Actions
    func show(_ viewController: UIViewController, animated: Bool)
    func pop()
    func popToVC(ofClass: AnyClass, animated: Bool)
    func popToRoot(withAnimation: Bool)

    func store(coordinator: RouterContract)
    func free(coordinator: RouterContract)
}

protocol RouterDelegate: AnyObject {
    func setDelegate(_ delegate: RouterContract)
}

