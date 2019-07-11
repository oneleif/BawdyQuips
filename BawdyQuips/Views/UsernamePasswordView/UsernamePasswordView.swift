//
//  UsernamePasswordView.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct UsernamePasswordView : View {
    @Binding var username: String
    @Binding var password: String
    
    var body: some View {
        VStack {
            Text("Username")
            TextField("jdoe", text: $username)
                .textFieldStyle(.roundedBorder)
            Text("Password")
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
    }
}
//
//#if DEBUG
//struct UsernamePasswordView_Previews : PreviewProvider {
//    static var previews: some View {
//        UsernamePasswordView()
//    }
//}
//#endif
