//
//  LoginViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/3/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame.size = CGSize(width: 200, height: 50)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        self.view.addSubview(loginButton)
        loginButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    
    func buttonAction(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
