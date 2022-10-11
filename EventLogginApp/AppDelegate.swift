//
//  AppDelegate.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var mainCoordinator: RouterContract?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController()
        mainCoordinator = HomeViewRouter(navigationController: navigationController)
        mainCoordinator?.start()
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
