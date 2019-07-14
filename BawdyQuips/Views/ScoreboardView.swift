//
//  ScoreboardView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/14/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct ScoreboardView: View {
    var users: [User] = (0 ... 20).map { User(id: $0, username: "\($0 ?? -1)", password: "\($0 ?? -1)") }
    
    var body: some View{
        VStack{
            ScrollView {
                ForEach(users.identified(by: \.id)) { user in
                    HStack{
                        Text("\(user.username)")
                            .font(.body)
                        Spacer()
                        HStack {
                            Text("\(user.currentScore.bronze)")
                            Text("\(user.currentScore.silver)")
                            Text("\(user.currentScore.gold)")
                        }
                        .font(.title)
                    }
                    .padding()
                        .background(Color.purple)
                        .cornerRadius(16)
                }

            }
        }
    }
}
