//
//  Category.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import Foundation
//                                              LINE 19 #2
struct Category {
    //                                          LINE 19 #3
    private(set) public var title: String
    private(set) public var imageName: String
    //                                          LINE 19 #4
    init(title: String, imageName: String) {
        
        self.title = title
        self.imageName = imageName
    }
    
}
