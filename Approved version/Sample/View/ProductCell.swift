//
//  ProductCell.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
//                                          Line 47 #2
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productBrand: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
//                                          LINE 64
    func updateViews(product: ProductInfo) {
        productBrand.text = product.brand
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
