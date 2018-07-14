//
//  List.swift
//  Search Bar Sample
//
//  Created by Wurl Link on 7/13/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import Foundation
struct List {
    
    private (set) public var toptitle: String
    private (set) public var bottomtitle: String
    
    init(firstText: String, secondText: String) {
        self.toptitle = firstText
        self.bottomtitle = secondText
    }
}
