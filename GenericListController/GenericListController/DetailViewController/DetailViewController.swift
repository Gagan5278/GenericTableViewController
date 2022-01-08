//
//  DetailViewController.swift
//  GenericListController
//
//  Created by Gagan  Vishal on 1/18/21.
//

import UIKit

class DetailViewController: GenericListViewController<DetailTableViewCell, DetailModel> {

    let detailDummyModel = [DetailModel(name: "Test First user", address: "77 Feather Tree", imageName: "girlhd"), DetailModel(name: "Dummy girl ", address: "7/4/79-A, NYC", imageName: "girlhd"), DetailModel(name: "Professional", address: "Eco Garden, London", imageName: "girl")]
    //MARK:- View Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //1. Cell Height
        self.tableView.estimatedRowHeight = 150.0
        self.tableView.rowHeight =  UITableView.automaticDimension
        //2.
        items = detailDummyModel
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
