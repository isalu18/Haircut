//
//  HistoryView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import SwiftUI

struct HistoryView: View {   
    @ObservedObject var navigationVM = NavigationViewModel.shared
    var body: some View {
        NavigationComponent(stack: $navigationVM.stack) {
            VStack {
                Text("History View")
                Button("Go To ProfileView") {
                    navigationVM.navigate(to: .profileView)
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
