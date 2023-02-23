//
//  PeopleGateway.swift
//  EasyChat
//
//  Created by Александр Борисов on 23.02.2023.
//

import Foundation

class PeopleGateway {
    let network: NetworkerProtocol

    init(network: NetworkController) {
        self.network = network
    }

    func loadPosts(completion: @escaping ([PeoplePostViewModel]) -> Void) {
        var components = URLComponents(string: "https://api.vk.com/method/friends.get")
        components?.queryItems = [
            URLQueryItem(name: "access_token", value: Session.sharedInstance.token),
            URLQueryItem(name: "fields", value: "nickname"),
            URLQueryItem(name: "fields", value: "photo_100"),
            URLQueryItem(name: "v", value: "5.131")
        ]

        guard
            let url = components?.url
        else {
            completion([])
            return
        }

        network.load(request: url) { (model: JsonInfo<ResponsePeople>?) in
            if let model = model {
                DispatchQueue.main.async {
                    let viewModel = model.response.items.map{ PeoplePostViewModel(from: $0)}
                    completion(viewModel)
                }
            }
        }

    }
    
}
