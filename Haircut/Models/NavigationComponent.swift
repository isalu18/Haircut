//
//  NavigationComponent.swift
//  Haircut
//
//  Created by Isaac Sanchez on 28/10/23.
//

import Foundation
import SwiftUI

struct NavigationComponent<T: View>: View {
    @ObservedObject var navigationVM = NavigationViewModel.shared
    @Binding var stack: [ActiveScreen]
//    let haircutSalon: FetchedResults<HaircutSalon>.Element
    
    var root: () -> T
    
    var body: some View {
        NavigationStack(path: $stack) {
            root()
                .navigationDestination(for: ActiveScreen.self) { destination in
                    switch destination {
                    case .searchView:
                        SearchView()
                    case .historyView:
                        HistoryView()
                    case .profileView:
                        ProfileView(client: Client(firstName: "Isaac", lastName: "Sanchez", email: "abcdefs@hotmail.com", gender: .male))
                    }
                }
                .sheet(isPresented: $navigationVM.showSheet) {
                    switch navigationVM.sheet {
                    case .testSheet:
                        SheetTestView(title: "Test Sheet")
                    case .historySheet:
                        HistorySheet()
                    case .addHairCutSalonSheet:
                        AddHaircutSalonSheet()
                    case .editHairCutSalonSheet(salon: let salon):
                        EditHaircutSalonSheet(haircutSalon: salon)
                    default:
                        SheetTestView(title: "Error: Sheet not recognized")
                    }
                }
        }
    }
}
