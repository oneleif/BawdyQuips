//
//  Card.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import Foundation

struct Card: Codable, Equatable {
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: Int?
    var description: String
    var numberOfBlanks: Int?
    var isPrompt: Bool?
    var authorId: Int
    
    init(id: Int? = nil,
         description: String,
         numberOfBlanks: Int? = 1,
         isPrompt: Bool? = true,
         authorId: Int) {
        self.id = id
        self.description = description
        self.numberOfBlanks = numberOfBlanks
        self.isPrompt = isPrompt
        self.authorId = authorId
    }
}
