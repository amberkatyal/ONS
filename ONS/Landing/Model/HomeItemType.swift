//
//  HomeItemType.swift
//  ONS
//
//  Created by Amber Katyal on 21/11/23.
//

import Foundation


enum HomeItemType: CaseIterable {
    case home
    case directory
    case support
    case follow
    case notifications
    
    var title: String {
        switch self {
        case .home:
            String(localized: "Home")
        case .directory:
            String(localized: "Directory")
        case .support:
            String(localized: "Support")
        case .follow:
            String(localized: "Follow")
        case .notifications:
            String(localized: "Notifications")
        }
    }
}
