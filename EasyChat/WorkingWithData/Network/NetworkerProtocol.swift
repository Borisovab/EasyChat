//
//  NetworkerProtocol.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation

protocol NetworkerProtocol {
    func load<Model: Decodable>(request: URL, completion: @escaping (Model?) -> Void)
}
