//
//  ViewController.swift
//  GenericListController
//
//  Created by Gagan  Vishal on 1/18/21.
//

import UIKit

class RootViewController: GenericListViewController<RootTableViewCell, ModelRoot> {
    let dummyNames = [ModelRoot(name: "James"), ModelRoot(name: "Bianca"), ModelRoot(name: "Robert"), ModelRoot(name: "Peter"), ModelRoot(name: "Gagan"), ModelRoot(name: "Siree"), ModelRoot(name: "Sarah"), ModelRoot(name: "Pure"),  ModelRoot(name: "Annu"),  ModelRoot(name: "Const")]
 
    //MARK:- View Controller life cyle
    override func viewDidLoad() {
        super.viewDidLoad()
        //title
        self.title = "Generic Table"
        items = dummyNames
    }
    
    //You can do customization as per your requirements
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(DetailViewController(), animated: true)
    }

}

