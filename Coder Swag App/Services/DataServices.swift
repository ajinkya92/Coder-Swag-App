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
    
    // MARK: Category Functionality
    
    private var categories = [
    
        Category(categoryTitle: "SHIRTS", categoryImage: "shirts.png"),
        Category(categoryTitle: "HOODIES", categoryImage: "hoodies.png"),
        Category(categoryTitle: "HATS", categoryImage: "hats.png"),
        Category(categoryTitle: "DIGITAL", categoryImage: "digital.png")
    
    ]
    
    func getCategories() -> [Category] {
        
        return categories
    }
    
    // MARK: Product Functionality
    
    private let hats = [
    
        Product(productTitle: "Devslopes Logo Graphic Beanie", productPrice: "$18", productImage: "hat01.png"),
        Product(productTitle: "Devslopes Logo Hat Black", productPrice: "$22", productImage: "hat02.png"),
        Product(productTitle: "Devslopes Logo Hat White", productPrice: "$22", productImage: "hat03.png"),
        Product(productTitle: "Devslopes Logo Snapback", productPrice: "$20", productImage: "hat04.png")
    
    ]
    
    private let hoodies = [
    
        Product(productTitle: "Devslopes Logo Hoodie Grey", productPrice: "$32", productImage: "hoodie01.png"),
        Product(productTitle: "Devslopes Logo Hoodie Red", productPrice: "$32", productImage: "hoodie02.png"),
        Product(productTitle: "Devslopes Hoodie Grey", productPrice: "$32", productImage: "hoodie03.png"),
        Product(productTitle: "Devslopes Logo Black", productPrice: "$32", productImage: "hoodie04.png")
        
    ]
    
    private let shirts = [
    
        Product(productTitle: "Devslopes Logo Shirt Black", productPrice: "$19", productImage: "shirt01.png"),
         Product(productTitle: "Devslopes Badge Shirt Light Grey", productPrice: "$18", productImage: "shirt02.png"),
          Product(productTitle: "Devslopes Logo Shirt Red", productPrice: "$18", productImage: "shirt03.png"),
           Product(productTitle: "Hustle Delegate Grey", productPrice: "$18", productImage: "shirt04.png"),
            Product(productTitle: "Kickflip Studios Black", productPrice: "$18", productImage: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        
        return hats
    }
    
    func getHoodies() -> [Product] {
        
        return hoodies
    }
    
    func getShirts() -> [Product] {
        
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        
        return digitalGoods
    }
    
}







