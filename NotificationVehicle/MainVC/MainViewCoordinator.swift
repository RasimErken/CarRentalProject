//
//  Protocol.swift
//  NotificationVehicle
//
//  Created by rasim rifat erken on 1.09.2022.
//
import UIKit

protocol MainViewInStartFlow: class {
    func coordinateToLogInVC()
}

class MainViewCoordinator: Coordinator , MainViewInStartFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let startViewController = ViewController()
        startViewController.coordinator = self
        
        navigationController.pushViewController(startViewController, animated: true)
        removeNavigation()
        
    }
    
    func coordinateToLogInVC() {
        AuthService.insance.logoutUser { [self] status in
            goToLoginVC()
        }
        

    }
    func goToLoginVC() {
        let tabBarCoordinator = StartCoordinator(navigationController: navigationController)
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
