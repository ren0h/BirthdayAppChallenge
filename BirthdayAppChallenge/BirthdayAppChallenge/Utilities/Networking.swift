//
//  Networking.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import Foundation

class Networking {
    static let shared = Networking()
    
    func getResults(closure: @escaping (Results?) -> Void) {
        if let url = URL(string: "https://randomuser.me/api/?results=1000&seed=chalkboard&inc=name,dob") {
            let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                if let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode >= 400 {
                    if let data = data, let decodedResponse = try? JSONDecoder().decode(Results.self, from: data) {
// Display error
                    }
                }
                if error == nil {
                    if let data = data, let decodedResponse = try? JSONDecoder().decode(Results.self, from: data) {
                                                DispatchQueue.main.async {
                                                    closure(decodedResponse)
                                                }
                    }
                } else {
                    //Cant find
                }
            }
            task.resume()
        }
    }
    
}
