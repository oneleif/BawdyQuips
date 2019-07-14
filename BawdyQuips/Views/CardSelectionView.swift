//
//  CardSelectionView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/14/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct CardSelectionView : View {
    var cards: [Card] = (0 ... 20).map { Card(id: $0, description: "\($0)", authorId: $0) }
    
    var body: some View {
        VStack{
            ScrollView {
                ForEach(cards.identified(by: \.id)) { card in
                    HStack{
                        Button(action: {
                            API.shared.selectCard(card: card)
                        }) {
                            Text("\(card.description)")
                        }
                    }
                    .padding()
                        .background(Color.purple)
                        .cornerRadius(16)
                }
                
            }
        }
    }
}
