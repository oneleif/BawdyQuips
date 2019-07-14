//
//  Room.swift
//  App
//
//  Created by Zach Eriksen on 5/28/19.
//
final class Room: Codable {
    var admin: Int?
    var users: [Int]?
    var judge: Int?
    var currentPrompt: Card?
    var cardDeck : CardDeck?
    
    init() {
        self.admin = nil
        self.users = []
        self.judge = nil
        self.cardDeck = CardDeck()
    }
}
