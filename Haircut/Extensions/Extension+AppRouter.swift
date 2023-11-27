//
//  Extension+AppRouter.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import Foundation
import SwiftUI

// MARK: Extension
@MainActor
extension View {
    func withAppRouter() -> some View {
        navigationDestination(for: ActiveScreen.self) { destination in
            switch destination {
            case .searchView:
                SearchView()
            case .historyView:
                HistoryView()
            case .profileView:
                ProfileView()
            }
        }
    }
}

// MARK: Example to use this Extension

//class NavigationViewModel: ObservableObject {
//    @Published var stack: [ActiveScreen] = []
//
//    func navigate(to screen: ActiveScreen) {
//        stack.append(screen)
//    }
//}

//struct SearchView: View {
//    @StateObject var navigationVM = NavigationViewModel()
//    var body: some View {
//        NavigationStack(path: $navigationVM.stack) {
//            Text("Search View")
//            Button("Go To HistoryView") {
//                navigationVM.navigate(to: .historyView)
//            }
//            .withAppRouter()
//        }
//        .environmentObject(navigationVM)
//    }
//}
