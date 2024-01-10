//
//  HaircutSalonModel.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/11/23.
//

import Foundation

struct HaircutSalonModel: Hashable {
    var id: UUID
    var name: String
    var image: String
    var address: String
    var rate: Int
    
    var rateRounded: String {
        String(format: "%.1f", rate)
    }
    
    var rateTemporal: String {
        String(rate)
    }
    
}

//    let examples: [HaircutSalon] = [
//        HaircutSalon(id: UUID().uuidString, name: "Barberia 1", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 4.5),
//        HaircutSalon(id: UUID().uuidString, name: "Barberia 2", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 3.9),
//        HaircutSalon(id: UUID().uuidString, name: "Barberia 3", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 4.2),
//        HaircutSalon(id: UUID().uuidString, name: "Barberia 4", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 5.0),
//        HaircutSalon(id: UUID().uuidString, name: "Barberia 5", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 3.7)]
