//
//  DataModal.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/12/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import Foundation

class DataMadal {
    var headerImage: String?
    var headerName: String?
    var subType = [String]()
    var subTypeImage = [String]()
    var isExpandable: Bool = false
    
    init(headerImage: String, headerName: String, subType: [String],subTypeImage: [String], isExpandable: Bool) {
        self.headerImage = headerImage
        self.headerName = headerName
        self.subType = subType
        self.subTypeImage = subTypeImage
        self.isExpandable = isExpandable
    }
}
