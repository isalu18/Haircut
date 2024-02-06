//
//  SearchView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import SwiftUI

struct SearchView: View {
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.rate)
    ]) var salons: FetchedResults<HaircutSalon>
    
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
                VStack {
                    ForEach(salons, id: \.id) { salon in
                        HaircutSalonCard(haircutSalon: salon)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            navigationVM.showSheet(.addHairCutSalonSheet)
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                    }
                }
                
                
            }
            // TODO: Empezar con Search
            .searchable(text: $viewModel.searchText, prompt: "Find you Haircut salon...")
        }
    }
}

#Preview {
    SearchView()
}
