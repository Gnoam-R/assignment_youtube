//
//  ViewController.swift
//  assignmentYoutube
//
//  Created by Roh on 3/16/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    let button: UIButton = {
        Button.makeButtonNextSizeSmall()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        view.backgroundColor = .white
        addView()
        setLayout()
    }
    
    private func addView() {
        view.addSubview(button)
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 279),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 567),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -203),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22)
        ])
    }
}

#Preview {
    LoginViewController()
}
