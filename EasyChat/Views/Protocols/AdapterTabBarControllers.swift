//
//  AdapterTabBarControllers.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import UIKit

protocol AdapterTabBarControllers {
    static func generateTabBar(tabBarController: UITabBarController) -> Self
}

extension AdapterTabBarControllers where Self: UITabBarController {
    static func generateTabBar(tabBarController: UITabBarController) -> Self {
        return tabBarController as! Self
    }
}
