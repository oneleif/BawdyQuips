//
//  APIService.swift
//  BawdyQuips
//
//  Created by Zach Eriksen on 7/10/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import Foundation

struct LoginPostData: Codable {
    let username: String
    let password: String
}

class API {
    static var shared: API = API()
    
    let port = "8080"
    lazy var path = "http://localhost:\(port)"
    
    enum Route {
        case register
    }
    
    func handleRegister() {
        guard let url = URL(string: "\(path)/register") else {
            print("ugh o")
            return
        }
        var request = URLRequest(url: url)

        request.httpMethod = "POST"
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        let userRequest = LoginPostData(username: "duhhhh", password: "myadmin")
        do {
        
        let data = try JSONEncoder().encode(userRequest)
        
        request.httpBody = data
            
        } catch {
            print(error.localizedDescription)
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let dataResponse = data,
                error == nil else {
                    print(error?.localizedDescription ?? "Response Error")
                    return
                    
            }
            
            let user = try? JSONDecoder().decode(User.self, from: dataResponse)
            print(user)
        }
        
        task.resume()
    }
}
