//
//  Room.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct Room: Equatable {
    enum roomSize {
        case single, double
    }
    enum roomType {
        case standard, junior, master
    }
    
    let number: Int
    let type: roomType
    let size: roomSize?
    
    init(number: Int, type: roomType, size: roomSize) {
        self.number = number
        self.type = type
        self.size = size
    }
}
