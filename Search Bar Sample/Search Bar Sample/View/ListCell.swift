//
//  ListCell.swift
//  Search Bar Sample
//
//  Created by Wurl Link on 7/13/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var upperText: UILabel!
    @IBOutlet weak var lowerText: UILabel!
    
    func updateView (lists: List) {
        upperText.text = lists.toptitle
        lowerText.text = lists.bottomtitle
    }

}
