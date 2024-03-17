//
//  ViewController.swift
//  assignmentYoutube
//
//  Created by Roh on 3/16/24.
//

import UIKit

class LoginViewController: UIViewController {
    private var _authenticationUIView: AuthenticationUIView
    
    init(view authenticationUIView: AuthenticationUIView) {
        self._authenticationUIView = authenticationUIView
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        _authenticationUIView.addSubView(of: view)
    }
    
    private func setLayout() {
        _authenticationUIView.setLayout(of: view)
    }
}


