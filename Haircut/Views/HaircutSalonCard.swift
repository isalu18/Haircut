//
//  HaircutSalonCard.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/11/23.
//

import SwiftUI

struct HaircutSalonCard: View {
    let haircutSalon: FetchedResults<HaircutSalon>.Element
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.white)
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text(haircutSalon.name ?? "Unknown")
                    .font(.title3)
                    .fontWeight(.bold)
                Image(haircutSalon.image ?? "Unknown")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text("Address: \(haircutSalon.address ?? "Unknown")")
                        .font(.body)
                        .padding(.bottom, 5)
                    HStack {
                        Text("Rate: \(haircutSalon.rate ?? "0")")
                            .font(.body)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.vertical)
            }
            .padding()
        }
        .frame(height: UIScreen.main.bounds.width)
        .padding(.horizontal, 10)
    }
}

//#Preview {
//    HaircutSalonCard(haircutSalon: HaircutSalon(id: "1", name: "test", image: "haircut", address: "test", rate: 4.5))
//}
