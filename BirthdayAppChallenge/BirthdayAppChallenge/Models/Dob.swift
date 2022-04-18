//
//  Dob.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import Foundation

struct Dob: Codable {
    let date: String?
    let age: Int?
    
    var reformattedDate: String? {
        get {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            if let newDate = dateFormatter.date(from: date ?? "") {
                dateFormatter.dateFormat = "dd-MM-yyyy"
                return dateFormatter.string(from: newDate)
            } else {
                return nil
            }
            
            }
    }
}
