//
//  CompanyService.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct CompanyService {
    
    enum EmployeeError: Error {
        case employeeAlreadyExists, employeeDoesNotExist
    }
    
    var employees: [Employee]
    
    mutating func addEmployee(companyID: Int, employeeID: Int, role: Employee.Role = .staff) throws {
        do {
            guard !employees.contains(where: {$0.companyID == companyID && $0.employeeID == employeeID}) else { throw EmployeeError.employeeAlreadyExists }
            
            let newEmployee = Employee(companyID: companyID, employeeID: employeeID, role: role)
            
            employees.append(newEmployee)
        } catch {
            print("employee already exists")
        }
        
        
    }
    
    mutating func deleteEmployee(id: Int) {
        employees.removeAll(where: { $0.employeeID == id })
    }
}
