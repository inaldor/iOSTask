//
//  ItemCell.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import UIKit

/// Cell used to show some info about each item
class ItemCell: UITableViewCell {

    // MARK: Properties
    
    let cellView: UIView = {

        let view = UIView()
        view.backgroundColor = UIColor.white
        return view

    }()
    
    /// The ID label, displayed in the top 
    let idLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
       
        return label
    }()
    
    /// The label displaying the title
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .left
        label.numberOfLines = 0
       
        return label
    }()
    
    /// The label displaying the subtitle
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textAlignment = .left
        
        return label
    }()
    
    /// The label displaying the date
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textAlignment = .right
       
        return label
    }()

    // MARK: Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupCell()
        
    }
    
    // MARK: Imperatives
    
    /// Function to setting up the cell
    func setupCell() {
        
        addSubview(cellView)
        
        cellView.addSubview(idLabel)
        cellView.addSubview(titleLabel)
        cellView.addSubview(subtitleLabel)
        cellView.addSubview(dateLabel)
        
        
        /// Setting the anchor of each element of the cell
        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 170)
        
        idLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: -120, paddingRight: 20, width: 0, height: 170)
        
        titleLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: -70, paddingRight: 20, width: 0, height: 170)
        
        subtitleLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: -20, paddingRight: 20, width: 0, height: 170)
        
        dateLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 140, paddingRight: 20, width: 0, height: 170)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
