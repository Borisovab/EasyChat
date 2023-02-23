//
//  AppCoordinator.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var isLoggedIn: Bool = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        if isLoggedIn {
            showTabBar()
        } else {
            showLogin()
        }
    }

    func showLogin() {
        let vc = LoginViewController.generateVC(viewController: LoginViewController(), title: "Login")
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        vc.viewModel?.isLoggedIn = isLoggedIn
        navigationController.pushViewController(vc, animated: true)
    }

    func showTabBar() {
        let tbc = TabBarController.generateTabBar(tabBarController: TabBarController())
        tbc.coordinator = self
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(tbc, animated: true)
    }


}
