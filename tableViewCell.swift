//
//  tableViewCell.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/13/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(0, 36, 5, 36))
       

    }
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            let inset: CGFloat = 15
            var frame = newFrame
            frame.origin.x += inset
            frame.size.width -= 2 * inset
            super.frame = frame
        }
    }
 
}
