//
//  File.swift
//  Haircut
//
//  Created by Isaac Sanchez on 03/12/23.
//

import Foundation

struct Client {
    let firstName: String
    let lastName: String
    let email: String
    let gender: Gender
}

enum Gender {
    case male
    case female
    case other
    
    var genderString: String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .other:
            return "Other"
        }
    }
}
