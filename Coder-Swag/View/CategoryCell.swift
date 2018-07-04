//
//  CategoryCell.swift
//  Coder-Swag
//
//  Created by Steven on 6/14/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
