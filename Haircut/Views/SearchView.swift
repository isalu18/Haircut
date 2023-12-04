//
//  SearchView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var navigationVM = NavigationViewModel.shared
    @StateObject var viewModel = SearchViewModel()
    var body: some View {
        NavigationComponent(stack: $navigationVM.stack) {
            ScrollView {
//                VStack {
//                    Text("Search View")
//                    Button("Go To HistoryView") {
//                        navigationVM.navigate(to: .historyView)
//                    }
//                    .padding(.bottom)
//                    Button("Go To Test Sheet") {
//                        navigationVM.showSheet(.testSheet)
//                    }
//                }
                ForEach(examples, id: \.id) { salon in
                    HaircutSalonCard(haircutSalon: salon)
                }
                
            }
            // TODO: Tiene un bug donde se mueve rara toda la vista por el searchbar
//            .searchable(text: $viewModel.searchText, prompt: "Find you Haircut salon...")
        }
    }
    
    let examples: [HaircutSalon] = [
        HaircutSalon(id: UUID().uuidString, name: "Barberia 1", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 4.5),
        HaircutSalon(id: UUID().uuidString, name: "Barberia 2", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 3.9),
        HaircutSalon(id: UUID().uuidString, name: "Barberia 3", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 4.2),
        HaircutSalon(id: UUID().uuidString, name: "Barberia 4", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 5.0),
        HaircutSalon(id: UUID().uuidString, name: "Barberia 5", image: "placeholder", address: "26985 Brighton Lane, Lake Forest, CA 92630", rate: 3.7)]
}

#Preview {
    SearchView()
}
