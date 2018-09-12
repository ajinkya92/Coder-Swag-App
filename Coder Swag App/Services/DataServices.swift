//
//  DataServices.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import Foundation

class DataServices {
    
    public static let instance = DataServices()
    
    
    private var categories = [
    
        Category(categoryTitle: "SHIRTS", categoryImage: "shirts.png"),
        Category(categoryTitle: "HOODIES", categoryImage: "hoodies.png"),
        Category(categoryTitle: "HATS", categoryImage: "hats.png"),
        Category(categoryTitle: "DIGITAL", categoryImage: "digital.png")
    
    ]
    
    func getCategories() -> [Category] {
        
        return categories
    }
    
}
