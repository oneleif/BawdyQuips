//
//  InitialView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct InitialView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            UsernamePasswordView(username: $username, password: $password)
            Spacer()
            HStack(alignment: .center, spacing: 32) {
                PresentationLink(destination: RegisterView()) {
                    Text("Register")
                }
                Button(action: {
                    print("Login")
                    let loginData = LoginPostData(username: self.username, password: self.password)
                    API.shared.handleLogin(loginData: loginData)
                }) {
                    Text("Login")
                }
            }
        }
        .padding()
    }
}

#if DEBUG
struct InitialView_Previews : PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
#endif
