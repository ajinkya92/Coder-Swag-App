//
//  CategoryCell.swift
//  Coder Swag App
//
//  Created by Ajinkya Sonar on 12/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCategories(category: Category) {
        
        categoryImage.image = UIImage(named: category.categoryImage)
        categoryTitle.text = category.categoryTitle
    }

}
