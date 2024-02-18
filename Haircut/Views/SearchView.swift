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
    
    @ObservedObject var appRouter = AppRouter.shared
    @State private var searchText = ""
    
    var body: some View {
        NavigationComponent(stack: $appRouter.stack) {
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
                            appRouter.showSheet(.addHairCutSalonSheet)
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Find you Haircut salon...")
            .onChange(of: searchText) { newValue in
                salons.nsPredicate = newValue.isEmpty ? nil : NSPredicate(format: "name CONTAINS %@", newValue)
            }
        }
    }
}

#Preview {
    SearchView()
}
