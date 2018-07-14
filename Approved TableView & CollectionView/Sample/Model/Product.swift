//
//  Product.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import Foundation
//                              Line 50 #2
struct ProductInfo {
    private (set) public var imageName: String
    private (set) public var brand: String
    private (set) public var title: String
    private (set) public var price: String
    //                          Line 50 #3
    init(imageName: String, title: String, brand: String, price: String) {
        self.brand = brand
        self.imageName = imageName
        self.price = price
        self.title = title
    }
}
