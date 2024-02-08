//
//  Employee.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct Employee: Equatable {
    
    enum Role {
        case manager, staff
    }
    
    let companyID: Int
    let employeeID: Int
    let role: Role
}
