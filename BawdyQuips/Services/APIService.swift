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

enum HTTPMethod: String {
    case POST
    case GET
}

class API {
    static var shared: API = API()
    
    let port = "8080"
    lazy var path = "http://localhost:\(port)"
    
    var user: User?
    
    var room: Room?
    
    enum Route {
        case register
    }
    
    func handleRegister(registerData: LoginPostData) {
        guard let url = URL(string: "\(path)/register") else {
            print("APIService.handleRegister() cannot create url")
            return
        }
        
        sendRequest(url: url, method: .POST, data: registerData) { data, response, error in
            guard let dataResponse = data,
            error == nil else {
                print(error?.localizedDescription ?? "Response Error")
                return
                
            }
            
            let user = try? JSONDecoder().decode(User.self, from: dataResponse)
            print(user)
        }
    }
    
    func handleLogin(loginData: LoginPostData) {
        guard let url = URL(string: "\(path)/login") else {
            print("APIService.handleRegister() cannot create url")
            return
        }
        
        sendRequest(url: url, method: .POST, data: loginData) { data, response, error in
            guard let dataResponse = data,
                error == nil else {
                    print(error?.localizedDescription ?? "Response Error")
                    return
                    
            }
            
            self.user = try? JSONDecoder().decode(User.self, from: dataResponse)
            print(self.user)
        }
    }
    
    func createRoom(){
        
    }
    
    func joinRoom(roomCode: String){
        
    }
    
    func readyUp(isReady: Bool){
        
    }
    
    func selectCard(card: Card){
        
    }
    
    
    func sendRequest<T: Encodable>(url: URL, method: HTTPMethod, data: T?, handler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        var request = URLRequest(url: url)
        
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        // Method
        request.httpMethod = method.rawValue
        
        if method == .POST{
            do {
                let data = try JSONEncoder().encode(data)
                
                request.httpBody = data
                
            } catch {
                print(error.localizedDescription)
            }
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: handler)
        
        task.resume()
    }
}
