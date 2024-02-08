//
//  Room.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct Room: Equatable {
    enum roomType {
        case single, double, triple
    }
    
    let number: Int
    let type: roomType
}
