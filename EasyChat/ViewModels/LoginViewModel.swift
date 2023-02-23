//
//  ViewModel.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation
import UIKit.UIColor

class LoginViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    var isLoggedIn = false

    func userButtonPressed(login: String, password: String) {
        let userLogin = User.logins.first?.login
        let userPassword = User.logins.first?.password

        if login != userLogin || password != userPassword {
            statusText.value = "Log in faild."
            statusColor.value = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            isLoggedIn = false
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            isLoggedIn = true
        }
    }

}
