//
//  LobbyView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/14/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct LobbyView: View {
    var users: [User] = (0 ... 20).map { User(id: $0, username: "\($0 ?? -1)", password: "\($0 ?? -1)") }
    
    var currentUser = User(username: "mock", password: "mock")
    
    var body: some View {
        //TODO get all users in my room
        VStack{
            ScrollView {
            
                ForEach(users.identified(by: \.id)) { user in
                    HStack{
                        Text("\(user.username)")
                            .font(.body)
                        Spacer()
                        Group {
                            user.isReady
                                ? Image(systemName: "hand.thumbsup")
                                : Image(systemName: "hand.thumbsdown")
                        }
                        .font(.title)
                    }
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(16)
                }
            
            }
            
            Button(action: {
                API.shared.readyUp(isReady: !self.currentUser.isReady)
            }) {
                Text("Ready Up")
            }
        }
            .navigationBarTitle("Room Code: 3425")
        .padding()
    }
}
