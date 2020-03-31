//
//  ItemDetailView.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import UIKit

/// The view displaying the details of a single item.
class ItemDetailView: UIView {
    
    // MARK: Properties
    
    /// The stack view containing labels vertically arranged
    private let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.spacing = 1
        stackView.frame = CGRect(x: 0, y: 0, width: 400, height: 500)
        
        return stackView
    }()
    
    /// The hardcoded name of the label ID
    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "ID"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The label displaying the ID of the item
    let idLabelValue: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The hardcoded name of the label Title
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The label displaying the title of the item
    let titleLabelValue: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The hardcoded name of the label Subtitle
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Subtitle"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The label displaying the subtitle of the item
    let subtitleLabelValue: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The hardcoded name of the label Body
    let bodyLabel: UILabel = {
        let label = UILabel()
        label.text = "Body"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
        
        return label
    }()
    
    /// The label displaying the Body of the item
    let bodyLabelValue: UILabel = {
        let label = UILabel()
        label.numberOfLines = 11
        label.textAlignment = .center
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The hardcoded name of the label Date
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    /// The label displaying the date of the item
    let dateLabelValue: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.frame = CGRect(x: 0, y: 0, width: 15, height: 20)
        
        return label
    }()
    
    // MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: View setup
    
    /// Initializes and configures each one of the subviews.
    private func setup() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(verticalStackView)
        
        /// Building a vertical stackview containing all the labels
        verticalStackView.addArrangedSubview(idLabel)
        verticalStackView.addArrangedSubview(idLabelValue)
        verticalStackView.addArrangedSubview(titleLabel)
        verticalStackView.addArrangedSubview(titleLabelValue)
        verticalStackView.addArrangedSubview(subtitleLabel)
        verticalStackView.addArrangedSubview(subtitleLabelValue)
        verticalStackView.addArrangedSubview(bodyLabel)
        verticalStackView.addArrangedSubview(bodyLabelValue)
        verticalStackView.addArrangedSubview(dateLabel)
        verticalStackView.addArrangedSubview(dateLabelValue)
        
    }
}
