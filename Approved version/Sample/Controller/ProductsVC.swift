//
//  ProductsVC.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import UIKit
//                                          LINE 63
class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    
    //                                      LINE 63 #2
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    //                                      LINE 61 #2
    private(set) public var products = [ProductInfo]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //                                  LINE 63 #4
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
//                                          LINE 61
    func initProducts(category: Category) {
        //                                  LINE 61 #3
        products = DataServices.instance.getproducts(forCategoryTitle: category.title)
//                                          LINE 67
        navigationItem.title = category.title
    }
    //                                      LINE 63 #3
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //                                  LINE 63 #5
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //                                  LINE 63 #6
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
//                                          LINE 65 
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }

}
