//
//  LandingViewModel.swift
//  ONS
//
//  Created by Amber Katyal on 20/11/23.
//

import Foundation

final class LandingViewModel {
    
    private(set) var layout: Layout = .leftAligned()
    var options: [Item] {
        layout.options
    }
    
    func apply() {
        
    }
}

// MARK: - Model
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
    }
    
}

extension LandingViewModel {
    
    enum LayoutType {
        case leftAligned
        case centerAligned
    }
    
    struct Layout {
        let type: LayoutType
        let options: [Item]
        
        static func leftAligned() -> Layout {
            Layout(type: .leftAligned, options: [
                Item(title: "Home", type: .home),
                Item(title: "Directory", type: .directory),
                Item(title: "Support", type: .support),
                Item(title: "Follow", type: .follow),
                Item(title: "Notifications", type: .notifications),
            ])
        }
        
        static func centerAligned() -> Layout {
            Layout(type: .centerAligned, options: [
                Item(title: "Home", type: .home),
                Item(title: "Catgories", type: .directory),
                Item(title: "FAQ", type: .follow),
                Item(title: "Notifications", type: .notifications),
            ])
        }
    }
}
