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

