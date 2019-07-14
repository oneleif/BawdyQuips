//
//  GameView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/14/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct GameView: View {
    var prompt : Card = Card(description: "Prompt _", authorId: 0)
    
    var body: some View {
        VStack {
            Text(prompt.description).frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
            PresentationLink(destination: CardSelectionView()) {
                Text("Select a Card")
            }
            Button(action: {
                print("Selected")
            }) {
                Text("Lock in Card")
            }
            ScoreboardView()
        }
    }
}
