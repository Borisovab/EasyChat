//
//  User.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
}

extension User {
    static var logins = [
        User(login: "aaa", password: "123")
    ]
}
