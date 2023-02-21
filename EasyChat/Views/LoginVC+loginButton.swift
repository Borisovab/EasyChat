//
//  LoginVC+loginButton.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation

extension LoginViewController {

    func enterButtonPressed() {
        self.enterButton.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
    }

    @objc func enterButtonAction() {
        viewModel.userButtonPressed(login: loginTF.text ?? "", password: passwordTF.text ?? "")
    }
}
