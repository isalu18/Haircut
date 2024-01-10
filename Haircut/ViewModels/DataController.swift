//
//  DataController.swift
//  Haircut
//
//  Created by Isaac Sanchez on 06/01/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Haircut")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
