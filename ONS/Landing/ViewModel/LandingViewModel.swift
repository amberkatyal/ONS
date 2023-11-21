//
//  LandingViewModel.swift
//  ONS
//
//  Created by Amber Katyal on 20/11/23.
//

import Foundation

final class LandingViewModel {
    
    private(set) var options: [Item] = Item.items
    
    
}

extension LandingViewModel {
    enum ItemType: CaseIterable {
        case home
        case directory
        case support
        case follow
        case notifications
    }
    
    struct Item {
        let title: String
        let type: ItemType
        
        static let items: [Item] = [
            Item(title: "Home", type: .home),
            Item(title: "Directory", type: .directory),
            Item(title: "Support", type: .support),
            Item(title: "Follow", type: .follow),
            Item(title: "Notifications", type: .notifications),
        ]
    }
    
}
