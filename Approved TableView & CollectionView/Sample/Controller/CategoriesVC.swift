//
//  ViewController.swift
//  Sample
//
//  Created by Wurl Link on 7/11/18.
//  Copyright © 2018 Wurl Link. All rights reserved.
//

import UIKit
//                                                      LINE 26
class CategoriesVC: UIViewController,UITableViewDataSource, UITableViewDelegate {
   
//                                                  LINE 15
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//                                             LINE 33
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    //                                         LINE 26 #2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //                                      LINE 26 #3
        return DataServices.instance.getCategories().count
    }
    //                                         LINE 26 #2
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//                                              LINE 32
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
//                                              LINE 32 #2
            let category = DataServices.instance.getCategories()[indexPath.row]
            //                                  LINE 32 #3
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
//                                              LINE 60
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    //                                          LINE 60 #2
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
//                                              LINE 68
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            //                                  LINE 62 #2
            assert(sender as? Category != nil)
//                                              LINE 62
            productsVC.initProducts(category: sender as! Category)
    }

    }

}
