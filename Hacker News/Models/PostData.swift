//
//  PostData.swift
//  Hacker News
//
//  Created by Mary Arnold on 7/14/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    var id:  String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    
    
}
