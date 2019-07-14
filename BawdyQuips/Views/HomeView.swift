//
//  HomeView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    @State private var roomCode: String = ""
    
    var body: some View {
        //TODO get all users in my room
        VStack(spacing: 32){
            VStack{
                Button(action: {
                    API.shared.createRoom()
                }) {
                    Text("Create Room")
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
            .padding()
            .background(Color.orange)
            .cornerRadius(16)
            
            VStack{
                TextField($roomCode)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {
                    API.shared.joinRoom(roomCode: self.roomCode)
                }) {
                    Text("Join Room")
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
                .padding()
                .background(Color.green)
                .cornerRadius(16)
        }
        .padding()
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
