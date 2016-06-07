//
//  LoginProvider.swift
//  SwiftEnums
//
//  Created by Sujay Busam on 6/6/16.
//  Copyright © 2016 Sujay's Dev Center. All rights reserved.
//

import Foundation

protocol LoginProviderDelegate {
    func loginProvider(loginProvider: LoginProvider, didSucceed successMessage: String)
    func loginProvider(loginProvider: LoginProvider, didFail error: String)
}

struct LoginUser {
    let email: String
    let password: String
    
    func isValid() -> Bool {
        // Simple validation
        return !email.isEmpty && !password.isEmpty
    }
}

enum LoginProvider {
    case Email(LoginUser)
    case Facebook
    case None
    
    func login(delegate: LoginProviderDelegate) {
        switch self {
        case let .Email(user) where user.isValid():
            loginWithEmail(user.email, password: user.password, delegate: delegate)
            break
        case let .Email(user) where !user.isValid():
            print("Invalid user")
            break
        case .Facebook:
            loginWithFacebook(delegate)
            break
        default:
            break
        }
    }
    
    // ============ Helper Functions ============ //
    
    private func loginWithEmail(email: String, password: String, delegate: LoginProviderDelegate) {
        // Mock out success
        delegate.loginProvider(self, didSucceed: "Email \(email) login success")
    }
    
    private func loginWithFacebook(delegate: LoginProviderDelegate) {
        // Mock out success
        delegate.loginProvider(self, didSucceed: "Facebook login success")
    }
}


