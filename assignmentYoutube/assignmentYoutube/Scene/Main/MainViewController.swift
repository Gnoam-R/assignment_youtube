//
//  MainViewController.swift
//  assignmentYoutube
//
//  Created by Roh on 3/18/24.
//

import UIKit

class MainViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        addView()
        setLayout()
    }
}

extension MainViewController: BaseViewController {
    func addView() {
        <#code#>
    }
    
    func setLayout() {
        <#code#>
    }
}
