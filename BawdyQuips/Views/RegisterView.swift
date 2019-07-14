//
//  RegisterView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct RegisterView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            UsernamePasswordView(username: $username, password: $password)
            Spacer()
            Button(action: {
                print("Register")
                let registerData = LoginPostData(username: self.username, password: self.password)
                API.shared.handleRegister(registerData: registerData)
            }) {
                Text("Register")
            }
        }
        .padding()
    }
}

#if DEBUG
struct RegisterView_Previews : PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
#endif
