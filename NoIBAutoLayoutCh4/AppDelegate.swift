//
//  AppDelegate.swift
//  NoIBAutoLayoutCh4
//
//  Created by Herve Desrosiers on 2020-02-26.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = Layout01ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

