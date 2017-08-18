//
//  LoginViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/3/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "GDV-logo-large"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let membershipTextField: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.placeholder = "Membership"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 2
        textField.keyboardType = .default
        return textField
    }()
    
    let passwordTextField: LeftPaddedTextField = {
        let textField = LeftPaddedTextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 2
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .orange
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeKeyboardNotification()
        let tap = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        view.addGestureRecognizer(tap)
        setupView()
    }
    
    
    @objc func loginButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func DismissKeyboard() {
        view.endEditing(true)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            
        }, completion: nil)
    }
    
    func setupView() {
        
        view.backgroundColor = UIColor.init(red: 8/255, green: 150/255, blue: 247/255, alpha: 1)
        
        view.addSubview(logoImageView)
        view.addSubview(membershipTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -100).isActive = true
        
        membershipTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        membershipTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 25).isActive = true
        membershipTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        membershipTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: membershipTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.addTarget(self, action: #selector(loginButtonClick), for: .touchUpInside)
    }
    
    private func observeKeyboardNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(KeyboardShow), name: Notification.Name.UIKeyboardWillShow, object: nil)
    }
    
    @objc func KeyboardShow() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.view.frame = CGRect(x: 0, y: -50, width: self.view.frame.width, height: self.view.frame.height)
            
        }, completion: nil)
    }
}

class LeftPaddedTextField: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
}
