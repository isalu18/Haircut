//
//  AddHaircutSalonSheet.swift
//  Haircut
//
//  Created by Isaac Sanchez on 06/01/24.
//

import SwiftUI

struct AddHaircutSalonSheet: View {
    @Environment(\.managedObjectContext) var moc
    @ObservedObject var navigationVM = NavigationViewModel.shared
    
    @State private var salonModel = HaircutSalonModel(id: UUID(), name: "", image: "", address: "", rate: 0)
    var body: some View {
        BaseSheet {
            VStack {
                Form {
                    Section {
                        TextField("Name", text: $salonModel.name)
                        // TODO: Agregar imagen
        //                    TextField("Image")
                        TextField("Address", text: $salonModel.address)
                        Picker("Rate", selection: $salonModel.rate) {
                            ForEach(0..<6) {
                                Text(String($0))
                            }
                        }
                    }
                    Section {
                        Button("Add") {
                            let salon = HaircutSalon(context: moc)
                            salon.id = UUID()
                            salon.name = salonModel.name
                            salon.address = salonModel.address
                            salon.image = "haircut"
                            salon.rate = salonModel.rateTemporal
                            
                            try? moc.save()
                            navigationVM.dismissSheet()
                        }
                        .disabled(salonModel.name.isEmpty || salonModel.address.isEmpty)
                    }
                }
            }
            .navigationTitle("Add a Haircut Salon")
        }
    }
}

#Preview {
    AddHaircutSalonSheet()
}
