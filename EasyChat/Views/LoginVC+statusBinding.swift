//
//  LoginVC+statusBinding.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation

extension LoginViewController {
    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        }

        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        }
    }

}
