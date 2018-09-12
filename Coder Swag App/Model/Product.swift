//
//  Product.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var productImage: String
    private(set) public var productTitle: String
    private(set) public var productPrice: String
    
    init(productTitle: String, productPrice: String, productImage: String) {
        
        self.productTitle = productTitle
        self.productPrice = productPrice
        self.productImage = productImage
        
    }
    
}
