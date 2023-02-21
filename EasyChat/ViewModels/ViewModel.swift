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
            statusColor.value = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        } else {
            statusText.value = "You successfully logged in"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}
