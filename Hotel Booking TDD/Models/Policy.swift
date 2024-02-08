//
//  Policy.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct Policy: Equatable {
    static func == (lhs: Policy, rhs: Policy) -> Bool {
        lhs.id == rhs.id ? true : false
    }
    

    let id: Int
    let companyID: Int?
    let employeeID: Int?
    let roomTypesAllowed: (Room.roomSize?, Room.roomType)?
    
    init(id: Int, companyID: Int? = nil, employeeID: Int? = nil, roomTypesAllowed: (Room.roomSize?, Room.roomType)? = nil) {
        self.id = id
        self.companyID = companyID
        self.employeeID = employeeID
        self.roomTypesAllowed = roomTypesAllowed
    }
}
