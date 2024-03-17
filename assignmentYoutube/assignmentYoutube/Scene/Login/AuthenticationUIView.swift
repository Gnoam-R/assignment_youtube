//
//  LoginUIView.swift
//  assignmentYoutube
//
//  Created by Roh on 3/17/24.
//

import UIKit

class AuthenticationUIView {
    let googleImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "googleLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        var label = AuthenticationLabel()
        label.setTextWithStyle(
            text: "로그인",
            size: 22,
            weight: .bold
        )
        return label
    }()
    
    let subTitleLabel: UILabel = {
        var label = AuthenticationLabel()
        label.numberOfLines = 0
        label.setTextWithStyle(
            text: """
                Youtube로 이동하여 계속하세요.
                앱 및 Safari에서도 Google 서비스에 로그인됩니다.
            """,
            size: 14,
            weight: .regualr
        )
        return label
    }()
    
    let nextButton: UIButton = {
        var button = AuthenticationButton()
        button.setTitleWithStyle(title: "다음", size: 16, weight: .bold)
        return button
    }()
    
    func addSubView(of view: UIView) {
        view.addSubview(googleImage)
        view.addSubview(titleLabel)
        view.addSubview(subTitleLabel)
        view.addSubview(nextButton)
    }
    
    func setLayout(of view: UIView) {
        // Google ImageVIew
        NSLayoutConstraint.activate([
            googleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 128),
            googleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
//            googleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -662),
            googleImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -128)
        ])
        
        // TitleLabel
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 157),
            titleLabel.topAnchor.constraint(equalTo: googleImage.bottomAnchor, constant: 23),
//            titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -615),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -157)
        ])
        
        // Google ImageVIew
        NSLayoutConstraint.activate([
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44),
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 14),
            subTitleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -555),
            subTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44)
        ])
        
        
        // button set
        NSLayoutConstraint.activate([
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 279),
            nextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 567),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -203),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22)
        ])
    }
}
