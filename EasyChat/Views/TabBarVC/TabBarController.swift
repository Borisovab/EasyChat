//
//  TabBarController.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import UIKit

class TabBarController: UITabBarController, AdapterTabBarControllers {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setTabBarAppearence()
    }

    private func setupTabBar() {
        viewControllers = [
            generateVC(viewController: NewsViewController(), title: "News", image: UIImage(systemName: "newspaper")),
            generateVC(viewController: FriendsViewController(), title: "News", image: UIImage(systemName: "person.2")),
            generateVC(viewController: GroupsViewController(), title: "News", image: UIImage(systemName: "person.3"))
        ]
    }

    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }

    private func setTabBarAppearence() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2

        let roudLayer = CAShapeLayer()

        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height),
            cornerRadius: height / 2)

        roudLayer.path = bezierPath.cgPath

        tabBar.layer.insertSublayer(roudLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered

        roudLayer.fillColor = UIColor.mainWhite.cgColor
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }

}
