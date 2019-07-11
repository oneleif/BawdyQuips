//
//  LoginView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct LoginView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            UsernamePasswordView(username: $username, password: $password)
            Spacer()
            Button(action: {
                print("Login")
            }) {
                Text("Login")
            }
            .background(Color.gray)
        }
    }
}

#if DEBUG
struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
