//
//  FormValueModel.swift
//  NotificationVehicle
//
//  Created by rasim rifat erken on 4.09.2022.
//


import UIKit


protocol SignInStartFlow: class {
    func coordinateToLogInVC()
    func coordinateToMainVC(email:String,password:String,name:String)
}

class SignInCoordinator: Coordinator , SignInStartFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let startViewController = SignUpVC()
        startViewController.coordinator = self


        navigationController.pushViewController(startViewController, animated: true)
        removeNavigation()
        
    }
    
    func coordinateToLogInVC() {
        let tabBarCoordinator = StartCoordinator(navigationController: navigationController)
        coordinate(to: tabBarCoordinator)
    }
    func coordinateToMainVC(email:String,password:String,name:String) {
        
        AuthService.insance.createUser(withEmail: email, andPassword: password, andUsername: name) { success, error in
            if let error = error {
                print("SignUpError")
            } else {
                self.goToMainVC()
                NotificationClass.instance.notification(body: "You have signed up successfully ", notification: "SignUpNotification")
            }
        }
    }
    func goToMainVC() {
        let tabBarCoordinator = MainViewCoordinator(navigationController: navigationController)
        coordinate(to: tabBarCoordinator)
    }
    func removeNavigation() {
        let navigationController = self.navigationController
        var navigationArray = navigationController.viewControllers 
        let temp = navigationArray.last
        navigationArray.removeAll()
        navigationArray.append(temp!)
        self.navigationController.viewControllers = navigationArray
    }
}
