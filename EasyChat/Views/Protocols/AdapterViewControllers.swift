//
//  Adapter.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import UIKit

protocol AdapterViewControllers {
    static func generateVC(viewController: UIViewController, title: String) -> Self
}

extension AdapterViewControllers where Self: UIViewController {
    static func generateVC(viewController: UIViewController, title: String) -> Self {
        viewController.title = title
        return viewController as! Self
    }
}
