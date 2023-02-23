//
//  ResponsePeople.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation


struct ResponsePeople: Decodable {
    let count: Int
    let items: [PeopleFromJson]
}
