//
//  LoginVC+constraints.swift
//  EasyChat
//
//  Created by Александр Борисов on 21.02.2023.
//

import Foundation
import SnapKit

extension LoginViewController {
    func setupConstraints() {
        [headerLabel, loginStackView, enterButton, statusLabel].forEach{ view.addSubview($0) }

        headerLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(80)
        }


        loginStackView.snp.makeConstraints { make in
            make.top.equalTo(headerLabel.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().offset(25)
            make.height.equalTo(200)
        }


        enterButton.snp.makeConstraints { make in
            make.top.equalTo(loginStackView.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(60)
        }

        statusLabel.snp.makeConstraints { make in
            make.top.equalTo(enterButton.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(50)
        }

    }
}
