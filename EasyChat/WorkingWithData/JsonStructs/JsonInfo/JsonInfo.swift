//
//  JsonInfo.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation

struct JsonInfo<Response: Decodable>: Decodable {
    let response: Response
}
