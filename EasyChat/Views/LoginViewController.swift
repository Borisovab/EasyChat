//
//  ViewController.swift
//  EasyChat
//
//  Created by Александр Борисов on 20.02.2023.
//

import UIKit

class LoginViewController: UIViewController {

    var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Login Screen"
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.textAlignment = .center
        return label
    }()

    var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign In"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .light)
        return label
    }()

    var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "login"
        return label
    }()

    var loginTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "enter your login:"
        return textField
    }()

    var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "password"
        return label
    }()

    var passwordTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "enter your password:"
        return textField
    }()

    lazy var loginStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .fill
        stack.distribution = .fillEqually
        [loginLabel, loginTF, passwordLabel, passwordTF].forEach{ stack.addArrangedSubview($0) }
        return stack
    }()

    var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter", for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()

    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        bindViewModel()
    }

    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        }
    }


}

