//
//  LandingViewModel.swift
//  ONS
//
//  Created by Amber Katyal on 20/11/23.
//

import Foundation

final class HomeViewModel {
    private var _layout =  HomeLayoutType.leftAligned
    let options = HomeItemType.allCases
    
    var layout: HomeLayoutType {
        get {
            return _layout
        }
        set {
            _layout = newValue
        }
    }
}
