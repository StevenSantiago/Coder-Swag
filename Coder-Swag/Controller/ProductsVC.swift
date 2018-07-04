//
//  ProductsVC.swift
//  Coder-Swag
//
//  Created by Steven on 7/4/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]() // empty to have something to display when retreiving data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
            return ProductCell()
    }


}
