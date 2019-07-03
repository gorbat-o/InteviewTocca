//
//  AppDelegate.swift
//  Tocca
//
//  Created by Oleg  on 7/3/19.
//  Copyright © 2019 Oleg . All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupMainView()
        return true
    }
}

private extension AppDelegate {
    func setupMainView() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }
}

