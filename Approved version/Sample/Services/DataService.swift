//
//  DataService.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import Foundation
class DataServices {
    
    static let instance = DataServices()
    
    private let categories = [
    Category(title: "GROCERIES", imageName: "File1.png"),
    Category(title: "RECIPES", imageName: "File2.png"),
    Category(title: "MOPACKAGES", imageName: "File3.png"),
    Category(title: "BEVERAGES", imageName: "File4.png"),
    Category(title: "BLINGERS", imageName: "File5.png"),
    Category(title: "BLINGEST", imageName: "File6.png")
    
    ]
    //                                                      Line 53
    private let groceries = [
        ProductInfo(imageName: "hat01.png", title: "Hat", brand: "NIKE", price: "$100.00"),
        ProductInfo(imageName: "hat02.png", title: "Hat", brand: "NIKE", price: "$130.00"),
        ProductInfo(imageName: "hat03.png", title: "Hat", brand: "NIKE", price: "$99.00"),
        ProductInfo(imageName: "hat04", title: "Hat", brand: "NIKE", price: "$250.00"),
        ProductInfo(imageName: "hoodie01.png", title: "Hoodie", brand: "NIKE", price: "$250.00"),
        ProductInfo(imageName: "hoodie02.png", title: "Hoodie", brand: "NIKE", price: "$199.00"),
        ProductInfo(imageName: "hoodie03.png", title: "Hoodie", brand: "NIKE", price: "$259.00"),
        ProductInfo(imageName: "hoodie04.png", title: "Hoodie", brand: "NIKE", price: "$180.00"),
        ProductInfo(imageName: "shirt01.png", title: "Shirt", brand: "NIKE", price: "$20.00"),
        ProductInfo(imageName: "shirt02.png", title: "Shirt", brand: "NIKE", price: "$20.00"),
        ProductInfo(imageName: "shirt03.png", title: "Shirt", brand: "NIKE", price: "$19.00"),
        ProductInfo(imageName: "shirt04.png", title: "Shirt", brand: "NIKE", price: "$29.00"),
        ProductInfo(imageName: "shirt05.png", title: "Shirt", brand: "NIKE", price: "$49.00")
        
    ]
//     EMPTY ARRAYS BECAUSE THE PROJECT CELLS WILL BE EMPTY FOR NOW
    private let recipes = [ProductInfo]()
    private let moPackages = [ProductInfo]()
    private let beverages = [ProductInfo]()
    private let blingers = [ProductInfo]()
    private let blingest = [ProductInfo]()
    
    
    
    
    func getCategories() -> [Category]{
        return categories
    }
    //                                          LINE 53 #2
    func getproducts(forCategoryTitle title:String) -> [ProductInfo] {
        //                                      LINE 53 #3
        switch title {
        case "GROCERIES":
           return getGroceries()
        case "RECIPES":
           return getRecipes()
        case "MOPACKAGES":
           return getMoPackages()
        case "BEVERAGES":
           return getBeverages()
        case "BLINGERS":
           return getBlingers()
        case "BLINGEST":
           return getBlingest()
        default:
           return getGroceries()
        }
    }
    //                                          LINE 53 #4
    func getGroceries() -> [ProductInfo] {
        return groceries
    }
    
    func getRecipes() -> [ProductInfo] {
        return recipes
    }
    
    func getMoPackages() -> [ProductInfo] {
        return moPackages
    }
    
    func getBeverages() -> [ProductInfo] {
        return beverages
    }
    
    func getBlingers() -> [ProductInfo] {
        return blingers
    }
    
    func getBlingest() -> [ProductInfo] {
        return blingest
    }
    
    
}
