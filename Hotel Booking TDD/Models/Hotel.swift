//
//  Hotel.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct Hotel: Equatable,Identifiable {
    
    let id: Int
    let name: String
    
    var rooms: [Room]
    
    static func == (lhs: Hotel, rhs: Hotel) -> Bool {
            if lhs.id == rhs.id { true }
            else { false }
        }
        
}
