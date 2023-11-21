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
            "Home"
        case .directory:
            "Directory"
        case .support:
            "Support"
        case .follow:
            "Follow"
        case .notifications:
            "Notifications"
        }
    }
}
