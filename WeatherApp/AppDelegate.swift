//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Juan Bonforti on 11/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Navigation bar backgroundColor and items color.
        let aparence = UINavigationBarAppearance()
        aparence.backgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
        aparence.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        aparence.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = aparence
        UINavigationBar.appearance().scrollEdgeAppearance = aparence
        UIBarButtonItem.appearance().tintColor = .white
        
        setupDefaultSettings()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    private func setupDefaultSettings() {
        let userDefault = UserDefaults.standard
        if userDefault.value(forKey: "unit") == nil {
            userDefault.setValue(Unit.fahrenheit.rawValue, forKey: "unit")
        }
    }

}

