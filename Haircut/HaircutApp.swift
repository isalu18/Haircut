//
//  HaircutApp.swift
//  Haircut
//
//  Created by Isaac Sanchez on 23/10/23.
//

import SwiftUI

@main
struct HaircutApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
