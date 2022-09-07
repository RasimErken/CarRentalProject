//
//  AppDelegate.swift
//  FireBaseVehicle
//
//  Created by rasim rifat erken on 20.08.2022.
//

import UIKit
import FirebaseCore
import GoogleSignIn




@main
class AppDelegate: UIResponder, UIApplicationDelegate   {
    
    
    
    
    
    
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        
        return true
    }
    
    open func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        let handle = GIDSignIn.sharedInstance.handle(url)
        return handle
        
    }
    
    
    
    
}

