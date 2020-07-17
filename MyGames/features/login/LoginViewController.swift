//
//  LoginViewController.swift
//  MyGames
//
//  Created by Will Felix on 17/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: UIButton) {
        guard let username = textField.text else {
            showAlert()
            return
        }
        
        if "ninja" != username.lowercased() {
            
            showAlert()
            return
            
        }
        
        Auth.signin(name: username.uppercased())
        
        navigationController?.pushViewController(
            UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!,
            animated: true
        )
        
    }
    
    private func showAlert() {
        let alertController = UIAlertController(
            title: "Login",
            message: "Username does not exist!",
            preferredStyle: .alert
        )
        
        let button = UIAlertAction(
            title: "Try Again",
            style: .cancel
        )
        
        alertController.addAction(button)
        
        present(alertController,
                animated: true)
    }
}
