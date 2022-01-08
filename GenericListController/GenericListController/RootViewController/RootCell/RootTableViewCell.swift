//
//  RootTableViewCell.swift
//  GenericListController
//
//  Created by Gagan  Vishal on 1/18/21.
//

import UIKit

class RootTableViewCell: BaseTableViewCell<ModelRoot> {
    fileprivate let padding_constant: CGFloat = 10.0
    //Just to customize table cell and to explain use of custom cell
    let labelName: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 20)
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addLabelOnView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    override var item: ModelRoot! {
        didSet {
            self.labelName.text = item.name
        }
    }
    
    //MARK:- Add Label on cell
    fileprivate func addLabelOnView() {
        self.contentView.addSubview(self.labelName)
        self.labelName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.labelName.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: self.padding_constant),
            self.labelName.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
        ])
    }
    
}
