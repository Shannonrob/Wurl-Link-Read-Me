//
//  DataServices.swift
//  Search Bar Sample
//
//  Created by Wurl Link on 7/13/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import Foundation
class DataServices {
    static let instance = DataServices()
    
    private let currentList = [
        List(firstText: "Name", secondText: "Shannon"),
        List(firstText: "Car", secondText: "Infinity"),
        List(firstText: "City", secondText: "Brandon"),
        List(firstText: "Wife", secondText: "Naedra"),
        List(firstText: "Child", secondText: "Shantae"),
        List(firstText: "Job", secondText: "Driver"),
        List(firstText: "Cell", secondText: "iPhone"),
        List(firstText: "Computer", secondText: "Imac")
    
    ]
    
    func getList() -> [List] {
    return currentList
    }
}
