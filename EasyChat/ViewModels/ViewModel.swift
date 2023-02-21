//
//  ViewModel.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))

    func userButtonPressed(login: String, password: String) {
        if login != User.logins.first?.login || password != User.logins.first?.password {
            statusText.value = "Login failed"
            statusColor.value = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        } else {
            statusText.value = "You successfully logged in"
            statusColor.value = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
    }
}
