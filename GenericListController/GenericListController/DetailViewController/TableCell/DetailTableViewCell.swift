//
//  DetailTableViewCell.swift
//  GenericListController
//
//  Created by Gagan  Vishal on 1/18/21.
//

import UIKit

class DetailTableViewCell: BaseTableViewCell<DetailModel> {

    fileprivate let padding_constant: CGFloat = 10.0
    //Just to customize table cell and to explain use of custom cell
    let labelName: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 18)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let imgView: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.layer.cornerRadius = 40.0
        imgView.layer.borderWidth = 1.0
        imgView.layer.borderColor = UIColor.darkGray.cgColor
        imgView.layer.masksToBounds = true
        return imgView
    }()
    
    let addressLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //MARK:-init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addLabelOnView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    override var item: DetailModel! {
        didSet {
            self.labelName.text = item.name
            self.addressLabel.text = item.address
            self.imgView.image = UIImage(named: item.imageName)
        }
    }
    
    //MARK:- Add Label on cell
    fileprivate func addLabelOnView() {
        self.contentView.addSubview(self.imgView)
        self.contentView.addSubview(self.labelName)
        self.contentView.addSubview(self.addressLabel)
        NSLayoutConstraint.activate([
            self.imgView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: self.padding_constant),
            self.imgView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: self.padding_constant),
            self.imgView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -self.padding_constant),
            self.labelName.leadingAnchor.constraint(equalTo: self.imgView.trailingAnchor, constant: self.padding_constant),
            self.labelName.bottomAnchor.constraint(equalTo: self.imgView.centerYAnchor),
            self.addressLabel.leadingAnchor.constraint(equalTo: self.labelName.leadingAnchor),
            self.addressLabel.topAnchor.constraint(equalTo: self.labelName.bottomAnchor),
            imgView.widthAnchor.constraint(equalToConstant: 80),
        ])
    }

}
