//
//  BookingPolicySerivce.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct BookingPolicySerivce {
    var bookingPolicies: [Policy]
    
    mutating func setCompanyPolicy(id: Int, companyID: Int?, roomTypesAllowed: (Room.roomSize?,Room.roomType)?) {
        let newPolicy = Policy(id: id, companyID: companyID, roomTypesAllowed: roomTypesAllowed)
        
        bookingPolicies.append(newPolicy)
    }
}
