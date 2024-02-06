//
//  ActiveSheet.swift
//  Haircut
//
//  Created by Isaac Sanchez on 24/10/23.
//

import Foundation
import SwiftUI

enum ActiveSheet {
    case testSheet
    case historySheet
    case addHairCutSalonSheet
    case editHairCutSalonSheet(salon: FetchedResults<HaircutSalon>.Element)
}
