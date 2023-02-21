//
//  ViewController.swift
//  EasyChat
//
//  Created by Александр Борисов on 20.02.2023.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
//                self.statusLabel.text = statusText
            }
        }
    }


}

