//
//  ViewController.swift
//  SwiftEnums
//
//  Created by Sujay Busam on 6/4/16.
//  Copyright © 2016 Sujay's Dev Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginProviderDelegate {
    
    // ============ Text Field Instance Variables ============ //
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var loginProvider = LoginProvider.None
    

    // ============ Login Button Actions ============ //
    
    @IBAction func emailLoginTouched(sender: UIButton) {
        let user = LoginUser(email: emailField.text!, password: passwordField.text!)
        loginProvider = .Email(user)
        loginProvider.login(self)
    }
    
    @IBAction func facebookLoginTouched(sender: UIButton) {
        
    }
    
    
    // ============ LoginProviderDelegate Methods ============ //
    
    func loginProvider(loginProvider: LoginProvider, didSucceed successMessage: String) {
        print(successMessage)
    }
    
    func loginProvider(loginProvider: LoginProvider, didFail error: String) {
        
    }

    
}

