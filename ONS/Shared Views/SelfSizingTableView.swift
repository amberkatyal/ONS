//
//  SelfSizingTableView.swift
//  ONS
//
//  Created by Amber Katyal on 21/11/23.
//

import Foundation
import UIKit

class SelfSizingTableView: UITableView {
    
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
    
    override func reloadData() {
        super.reloadData()
        invalidateIntrinsicContentSize()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            invalidateIntrinsicContentSize()
            self.invalidateIntrinsicContentSizeOfSuperview()
        }
    }
    
    private func invalidateIntrinsicContentSizeOfSuperview() {
        var view: UIView? = superview
        
        while view != nil {
            view?.invalidateIntrinsicContentSize()
            if let tableView = view as? UITableView {
                break
            }
            view = view?.superview
        }
    }
}
