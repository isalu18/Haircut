//
//  ProfileView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var navigationVM = NavigationViewModel.shared
    let client: Client
    var body: some View {
        NavigationComponent(stack: $navigationVM.stack) {
            VStack {
//                Text("Profile View")
//                Button("Go To SearchView") {
//                    navigationVM.navigate(to: .searchView)
//                }
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 128, height: 128)
                VStack {
                    Text(client.firstName)
                        .font(.headline)
                    Text(client.lastName)
                        .font(.headline)
                    HStack {
                        Text(client.email)
                            .font(.headline)
                        Button {
    //                        accountManager.changeEmail()
                        } label: {
                            Text("Change E-mail")
                        }
                    }
                    Text(client.gender.genderString)
                        .font(.headline)
                }
                Button {
                    navigationVM.showSheet(.historySheet)
                } label: {
                    Text("Show last appointments")
                }
            }
        }
    }
}

#Preview {
    ProfileView(client: Client(firstName: "Isaac", lastName: "Sanchez", email: "abcdefs@hotmail.com", gender: .male))
}
