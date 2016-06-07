import UIKit

// Raw Values

enum LoginProvider: String {
    case Email = "email"
    case Facebook = "facebook"
    case Twitter = "twitter"
    case Google = "google"
}

let provider = LoginProvider.init(rawValue: "email")


// Associated Values

enum LoginProviderAV {
    case Email(String, String)
    case Facebook
    case Twitter
    case Google
}

let providerAV = LoginProviderAV.Email("foo@bar.com", "password")



// Associated Values Continued

struct LoginUser {
    let email: String
    let password: String
    
    func isValid() -> Bool {
        // Implement email / password validation
        return true
    }
}

enum LoginProviderAVC {
    case Email(LoginUser)
    case Facebook
    case Twitter
    case Google
}

let user = LoginUser(email: "foo@bar.com", password: "password")
let providerAVC = LoginProviderAVC.Email(user)

switch providerAVC {
case let .Email(user) where user.isValid():
    // Login logic here for valid user
    break
case let .Email(user) where !user.isValid():
    // Error handling here for invalid user
    break
}


// Functions 

func login() {
    switch self {
    case let .Email(user) where user.isValid():
        // Login
        break
    case let .Facebook:
        // Facebook login logic
        break
    }
}