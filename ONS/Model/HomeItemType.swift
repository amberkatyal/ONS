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
        var key = ""
        switch self {
        case .home:
            key = LocalisationHelper.Home.home.value
        case .directory:
            key = LocalisationHelper.Home.directory.value
        case .support:
            key = LocalisationHelper.Home.support.value
        case .follow:
            key = LocalisationHelper.Home.follow.value
        case .notifications:
            key = LocalisationHelper.Home.notifications.value
        }
        
        return String(localized: LocalizedStringResource(stringLiteral: key))
    }
}
