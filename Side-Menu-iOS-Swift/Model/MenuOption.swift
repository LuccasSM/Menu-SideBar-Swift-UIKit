//
//  MenuOption.swift
//  Side-Menu-iOS-Swift
//
//  Created by Luccas Santana Marinho on 22/03/22.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "menu") ?? UIImage()
        case .Inbox: return UIImage(named: "menu") ?? UIImage()
        case .Notifications: return UIImage(named: "menu") ?? UIImage()
        case .Settings: return UIImage(named: "menu") ?? UIImage()
        }
    }
}
