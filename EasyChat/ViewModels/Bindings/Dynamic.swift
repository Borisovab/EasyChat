//
//  Dynamic.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation


class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ v: T) {
        value = v
    }

    func bind(_ listener: Listener?) {
        self.listener = listener
    }
}
