import UIKit

// Raw Values

enum LoginProvider: String {
    case Email = "email"
    case Facebook = "facebook"
    case Twitter = "twitter"
    case Google = "google"
}

let provider = LoginProvider.init(rawValue: "email")
