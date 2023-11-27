//
//  ProfileView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var navigationVM = NavigationViewModel.shared
    var body: some View {
        NavigationComponent(stack: $navigationVM.stack) {
            VStack {
                Text("Profile View")
                Button("Go To SearchView") {
                    navigationVM.navigate(to: .searchView)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
