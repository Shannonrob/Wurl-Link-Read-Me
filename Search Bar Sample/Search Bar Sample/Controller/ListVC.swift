//
//  ViewController.swift
//  Search Bar Sample
//
//  Created by Wurl Link on 7/13/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import UIKit

class ListVC: UIViewController,UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ListingCell") as? ListCell {
            let listing = DataServices.instance.getList()[indexPath.row]
            cell.updateView(lists: listing)
            return cell
        }else {
            return ListCell()
        }
    }

}

