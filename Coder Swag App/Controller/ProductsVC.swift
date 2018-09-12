//
//  ProductsVC.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
    }
    
    func initializeProducts(category: Category) {
        
        products = DataServices.instance.getProducts(forCategoryTitle: category.categoryTitle)
        
        navigationItem.title = category.categoryTitle
        
    }
    
    // Mark: Collection View Implementation
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            let product = products[indexPath.row]
            
            cell.updateProducts(product: product)
            
            return cell
            
        }
        else {
            
            return ProductCell()
        }
    }
    

}
