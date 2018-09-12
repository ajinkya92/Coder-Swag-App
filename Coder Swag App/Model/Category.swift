//
//  Category.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var categoryImage: String
    private(set) public var categoryTitle: String
    
    init(categoryTitle: String, categoryImage: String) {
        
        self.categoryTitle = categoryTitle
        self.categoryImage = categoryImage
        
    }
    
}
