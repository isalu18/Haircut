//
//  BaseSheet.swift
//  Haircut
//
//  Created by Isaac Sanchez on 05/11/23.
//

import SwiftUI

struct BaseSheet<Content>: View where Content: View {
    @ObservedObject var navigationVM = NavigationViewModel.shared
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        NavigationView {
            content
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            navigationVM.dismissSheet()
                        } label: {
                            HStack(spacing: 5) {
                                Text("Dismiss")
                                Image(systemName: "clear")
                            }
                        }
                    }
                }
        }
    }
}
