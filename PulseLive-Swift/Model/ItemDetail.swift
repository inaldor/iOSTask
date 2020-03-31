//
//  ItemDetail.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//

import Foundation

struct ItemDetail: Decodable {
    
    // MARK: Properties
    
    let itemDetail: Detail
    
    // MARK: Coding Keys
    
    enum CodingKeys: String, CodingKey {
        case itemDetail = "item"
    }
    
}

// MARK: Internal Types

extension ItemDetail {
    
    struct Detail: Decodable {
        
        // MARK: Properties
        
        let id: Int
        let title: String
        let subtitle: String
        let body: String
        let date: String
        
        // MARK: Coding Keys
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case title = "title"
            case subtitle = "subtitle"
            case body = "body"
            case date = "date"
        }
    }
}
