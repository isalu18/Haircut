//
//  NavigationViewModel.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import Foundation
import SwiftUI

class NavigationViewModel: ObservableObject {
    static var shared = NavigationViewModel()
    @Published var stack: [ActiveScreen] = []
    @Published var sheet: ActiveSheet?
    @Published var showSheet = false
    
    func navigate(to screen: ActiveScreen) {
        guard stack.last != screen else { return }
        stack.append(screen)
        print("Stack: \(stack)")
    }
    
    func set(to screen: ActiveScreen) {
        stack = [screen]
        print("Stack: \(stack)")
    }
    
    func showSheet(_ sheet: ActiveSheet) {
        self.sheet = sheet
        showSheet = true
    }
    
    func dismissSheet() {
        showSheet = false
    }
}
