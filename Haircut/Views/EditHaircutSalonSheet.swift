//
//  EditHaircutSalonSheet.swift
//  Haircut
//
//  Created by Isaac Sanchez on 05/02/24.
//

import SwiftUI

import SwiftUI

struct EditHaircutSalonSheet: View {
    @Environment(\.managedObjectContext) var moc
    @ObservedObject var navigationVM = AppRouter.shared
    
    @State private var salonName = ""
    @State private var salonAddress = ""
//    @State private var salonImage = ""
    let haircutSalon: FetchedResults<HaircutSalon>.Element
    var body: some View {
        BaseSheet {
            VStack {
                Form {
                    Section {
                        if let haircutSalonName = haircutSalon.name, let haircutSalonAddress = haircutSalon.address {
                            TextField(haircutSalonName, text: $salonName)
                            // TODO: Agregar imagen
                            // TextField("Image")
                            TextField(haircutSalonAddress, text: $salonAddress)
                        }
                    }
                    Section {
                        Button("Confirm Changes") {
                            if !salonName.isEmpty {
                                haircutSalon.name = salonName
                            }
                            if !salonAddress.isEmpty {
                                haircutSalon.address = salonAddress
                            }
                            
                            if moc.hasChanges {
                                do {
                                    try moc.save()
                                    navigationVM.dismissSheet()
                                } catch {
                                    print(error)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Edit your Haircut Salon")
        }
    }
}

//#Preview {
//    EditHaircutSalonSheet()
//}
