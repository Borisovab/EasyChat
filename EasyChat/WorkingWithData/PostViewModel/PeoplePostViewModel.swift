//
//  PeoplePostViewModel.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation

struct PeoplePostViewModel {
    let avatar: String
    let firstName: String
    let lastName: String
}

extension PeoplePostViewModel {
    init(from netData: PeopleFromJson) {
        avatar = netData.avatar
        firstName = netData.firstName
        lastName = netData.lastName
    }
}
