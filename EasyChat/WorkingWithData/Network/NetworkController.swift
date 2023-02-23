//
//  NetworkController.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation

class NetworkController: NetworkerProtocol {
    func load<Model>(request: URL, completion: @escaping (Model?) -> Void) where Model : Decodable {
        DispatchQueue.main.async {
            URLSession.shared.dataTask(with: request) { data, _, _ in
                guard let data = data
                else { return }

                let model: Model? = self.parse(data: data)
                completion(model)
            }.resume()
        }
    }

    private func parse<Model: Decodable>(data: Data) -> Model? {
        return try? JSONDecoder().decode(Model.self, from: data)
    }

    
}
