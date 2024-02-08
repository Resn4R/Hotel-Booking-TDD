//
//  CompanyService.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct CompanyService {
    var employees: [Employee]
    
    mutating func addEmployee(companyID: Int, employeeID: Int, role: Employee.Role = .staff) {
        let newEmployee = Employee(companyID: companyID, employeeID: employeeID, role: role)
        
        employees.append(newEmployee)
    }
}
