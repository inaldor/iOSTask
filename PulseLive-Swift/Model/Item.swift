//
//  Item.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import Foundation

struct Item: Decodable {
    
    // MARK: Properties
    
    let items: [Items]
    
    // MARK: Coding Keys
    
    enum CodingKeys: String, CodingKey {
        case items = "items"
    }
    
}

// MARK: Internal Types

extension Item {
    
    struct Items: Decodable {
        
        // MARK: Properties
        
        let id: Int
        var title: String
        let subtitle: String
        let date: String
        
        // MARK: Coding Keys
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case title = "title"
            case subtitle = "subtitle"
            case date = "date"
        }
    }
    
    
}
