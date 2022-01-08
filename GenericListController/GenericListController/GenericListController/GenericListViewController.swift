//
//  GenericListViewController.swift
//  GenericListController
//
//  Created by Gagan  Vishal on 1/18/21.
//

import UIKit

class GenericListViewController<T: BaseTableViewCell<U>, U>: UITableViewController {

    fileprivate let cell_identifier = "cell_identifier"
    var items = [U]()
    //MARK:- View Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //1. Register cell
        self.tableView.register(T.self, forCellReuseIdentifier: self.cell_identifier)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: self.cell_identifier, for: indexPath) as? T {
            cell.item = self.items[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }



}
