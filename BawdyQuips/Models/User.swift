//
//  User.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import Foundation

struct GameScore: Codable {
    var gold: Int
    var silver: Int
    var bronze: Int
    
    static var zero: GameScore {
        return GameScore(gold: 0, silver: 0, bronze: 0)
    }
}

struct User: Codable {
    var id: Int?
    
    // Auth
    var username: String
    var password: String
    
    // Game Data
    var roomID: String?
    var isReady: Bool
    var currentScore: GameScore
    var totalScore: GameScore
    
    var handOfCards: [Card]?
    
    init(id: Int? = nil,
         username: String,
         password: String,
         roomID: String? = nil,
         isReady: Bool = false,
         currentScore: GameScore = GameScore.zero,
         totalScore: GameScore = GameScore.zero) {
        self.id = id
        self.username = username
        self.password = password
        self.roomID = roomID
        self.isReady = isReady
        self.currentScore = currentScore
        self.totalScore = totalScore
    }
}
