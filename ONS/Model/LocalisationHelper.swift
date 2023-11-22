//
//  LocalisationHelper.swift
//  ONS
//
//  Created by Abhinay Maurya on 22/11/23.
//

import Foundation

enum LocalisationHelper {
    enum Home {
        case home
        case directory
        case support
        case follow
        case notifications
        
        var value: String {
            switch self {
            case .home:
                return "home"
            case .directory:
                return "directory"
            case .support:
                return "support"
            case .follow:
                return "follow"
            case .notifications:
                return "notifications"
            }
        }
    }
}
