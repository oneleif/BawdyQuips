//
//  SuperView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct SuperView : View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Main Views")) {
                    NavigationLink(destination: InitialView()) {
                        Text("InitialView")
                    }
                    NavigationLink(destination: RegisterView()) {
                        Text("RegisterView")
                    }
                    NavigationLink(destination: HomeView()) {
                        Text("HomeView")
                    }
                    NavigationLink(destination: LobbyView()) {
                        Text("LobbyView")
                    }
                    NavigationLink(destination: GameView()) {
                        Text("GameView")
                    }
                }
            }
            .navigationBarTitle("BawdyQuips")
        }
    }
}

#if DEBUG
struct SuperView_Previews : PreviewProvider {
    static var previews: some View {
        SuperView()
    }
}
#endif
