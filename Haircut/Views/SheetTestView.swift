//
//  SheetTestView.swift
//  Haircut
//
//  Created by Isaac Sanchez on 05/11/23.
//

import SwiftUI

struct SheetTestView: View {
    let title: String
    var body: some View {
        BaseSheet {
            Text(title)
        }
    }
}

#Preview {
    SheetTestView(title: "Test Sheet")
}
