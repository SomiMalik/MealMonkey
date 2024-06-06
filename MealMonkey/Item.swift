//
//  Item.swift
//  MealMonkey
//
//  Created by Usama Khalid on 06/06/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
