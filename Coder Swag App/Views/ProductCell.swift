//
//  ProductCell.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateProducts(product: Product) {
        
        productTitle.text = product.productTitle
        productPrice.text = product.productPrice
        productImage.image = UIImage(named: product.productImage)
    }
    
}
