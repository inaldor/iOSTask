//
//  ItemViewController.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import UIKit

/// The TableViewController being responsible for display a list of all available items
class ItemViewController: UITableViewController {
        
    // MARK: Properties
    
    /// Array of type Item to support the fetching of the available items
    var itemsArray = [Item.Items]()
    
    /// ID of the cell used on this TableViewController
    let cellId = "cellId"
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupNavBar()
        fetchItems()
                
    }
    
    // MARK: Imperatives
    
    /// Setting up the TableView
    fileprivate func setupTableView() {
        
        /// Register the cell of our TableView
        tableView.register(ItemCell.self, forCellReuseIdentifier: cellId)
        
        /// Setting up some characteristics of the TableView
        tableView.separatorColor = .mainTextBlue
        tableView.backgroundColor = UIColor.rgb(r: 12, g: 47, b: 57)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        tableView.tableFooterView = UIView()
    }
    
    /// Setting up the NavigationBar
    fileprivate func setupNavBar() {
        navigationItem.title = "Items"
        
        /// Setting up some characteristics of the NavigationBar which is embeded in a Navigation Controller
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = UIColor.rgb(r: 226, g: 46, b: 50)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.rgb(r: 226, g: 46, b: 50)
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    /// Function being responsible for fetching the items from the API
    fileprivate func fetchItems() {
        
        /// Call for the Service to fetch the items from the API
        Service.shared.fetchItems { (items, error) in
            
            /// Checking for errors after try to fetching the items
            if let error = error {
                print("Failed to fetch items:", error)
                return
            }
            
            /// Safely unwrapping the response
            guard let ite = items else { return }
            
            /// Mapping the items to another array
            self.itemsArray =  ite.items.map( { $0 } )
            
            /// Sort the array by alphabetical order
            self.itemsArray = self.itemsArray.sorted(by: { $0.id < $1.id })
            
            /// Reloading the data of the TableView
            self.tableView.reloadData()
        }
    }
    
    // MARK: Table View Methods
    
    /// Setting the number of rows of each section of the TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    /// Setting each cell of the TableView
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ItemCell
        
        /// Assigning value to an specific cell of the TableView
        let item = itemsArray[indexPath.row]
        
        /// Assigning value to each label of the cell
        cell.idLabel.text = String(item.id)
        cell.titleLabel.text = item.title
        cell.subtitleLabel.text = item.subtitle
        cell.dateLabel.text = item.date
        
        return cell
    }
    
    /// Setting up what happen when the user click in a cell of the TableView
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /// Checking what is the specific ID of the item selected
        let itemSelected = itemsArray[indexPath.row].id

        /// Sharing the ID of the item selected with other ViewController
        let viewController = ItemDetailViewController()
        viewController.itemNumber = String(itemSelected)
        
        /// Pushing a new ViewController
        navigationController?.pushViewController(viewController, animated: true)

    }
    
}
