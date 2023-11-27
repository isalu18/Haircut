//
//  HaircutSalon.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/11/23.
//

import Foundation

struct HaircutSalon: Hashable {
    let id: String
    let name: String
    let image: String
    let address: String
    let rate: Float
    
    var rateRounded: String {
        String(format: "%.1f", rate)
    }
    
}
