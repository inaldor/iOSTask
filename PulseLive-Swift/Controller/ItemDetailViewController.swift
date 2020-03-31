//
//  ItemDetailViewController.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import UIKit

/// The ViewController being responsible for display the details of the selected item
class ItemDetailViewController: UIViewController{
    
    // MARK: Properties
    
    /// Variable to store the ID of the selected item
    var itemNumber: String = ""
    
    /// The view displaying the item detail.
    private var itemDetailView = ItemDetailView()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupView()
        fetchData()
    }
    
    // MARK: Imperatives

    /// Setting up the NavigationBar
    fileprivate func setupNavBar() {
        navigationItem.title = "Item Detail"
        
        /// Setting up some characteristics of the NavigationBar which is embeded in a Navigation Controller
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    /// Setting up the View
    fileprivate func setupView() {
        
        /// Setting up some characteristics of the View
        view.backgroundColor = .white
        
        itemDetailView.frame = view.bounds
        itemDetailView.backgroundColor = .white
        itemDetailView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(itemDetailView)
        
    }
    
    /// Function being responsible for fetching the details of the item selected
    fileprivate func fetchData() {
        
        /// Call for the Service to fetch the details of the item from the API
        Service.shared.fetchItemDetails(item: itemNumber) { (itemDetail, error) in
            
            /// Checking for errors after try to fetching the items
            if let error = error {
                print("Failed to fetch items:", error)
                return
            }
            
            /// Safely unwrapping the response
            guard let ite = itemDetail else { return }
            
            /// Assigning value to each label
            self.itemDetailView.idLabelValue.text = String(ite.itemDetail.id)
            self.itemDetailView.titleLabelValue.text = ite.itemDetail.title
            self.itemDetailView.subtitleLabelValue.text = ite.itemDetail.subtitle
            self.itemDetailView.bodyLabelValue.text = ite.itemDetail.body
            self.itemDetailView.dateLabelValue.text = ite.itemDetail.date
        }
    }
    
}
