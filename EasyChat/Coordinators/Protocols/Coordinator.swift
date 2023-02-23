//
//  Coordinator.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    func start()
}
