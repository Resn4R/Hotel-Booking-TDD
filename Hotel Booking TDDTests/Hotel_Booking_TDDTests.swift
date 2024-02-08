//
//  Hotel_Booking_TDDTests.swift
//  Hotel Booking TDDTests
//
//  Created by Vito Borghi on 08/02/2024.
//

import XCTest
@testable import Hotel_Booking_TDD

final class Hotel_Booking_TDDTests: XCTestCase {
    func testAddHotel() {
        var hotelService = HotelService()
        let newHotel = Hotel(id: 1, name: "Sample Hotel", rooms: [])
        
        try? hotelService.addHotel(newHotel)
        
        XCTAssertEqual(hotelService.findHotel(by: 1), newHotel)
    }
    
    func testSetRoom() {
        var hotelService = HotelService()
        let newHotel = Hotel(id: 1, name: "Sample Hotel", rooms: [])
        
        try? hotelService.addHotel(newHotel)
        try? hotelService.setRoom(number: 101, type: .standard, size: .single, in: newHotel)
        
        XCTAssertEqual(hotelService.hotelList[0].rooms[0], Room(number: 101, type: .standard, size: .single))
    }
    
    func testAddEmployee() {
        var companyService = CompanyService(employees: [])
        
        try? companyService.addEmployee(companyID: 1, employeeID: 1)
        
        XCTAssertEqual(companyService.employees[0], Employee(companyID: 1, employeeID: 1, role: .staff))
    }
    
    func testRemoveEmployee() {
        var companyService = CompanyService(employees: [])
        
        try? companyService.addEmployee(companyID: 1, employeeID: 1)
        
        companyService.deleteEmployee(id: 1)
        
        XCTAssertTrue(companyService.employees.isEmpty)
    }
    
    func testSetCompanyPolicy() {
        var policyService = BookingPolicyService(bookingPolicies: [])
        
        policyService.setCompanyPolicy(id: 1, companyID: 1, roomTypesAllowed: (nil ,Room.roomType.standard))
        
        XCTAssertEqual(policyService.bookingPolicies[0], Policy(id: 1, companyID: 1, roomTypesAllowed: (nil, Room.roomType.standard)))
    }
    
    func testSetEmployeePolicy() {
        var policyService = BookingPolicyService(bookingPolicies: [])
        
        policyService.setEmployeePolicy(id: 1, employeeID: 1, roomTypesAllowed: (nil ,Room.roomType.standard))
        
        XCTAssertEqual(policyService.bookingPolicies[0], Policy(id: 1, employeeID: 1, roomTypesAllowed: (nil, Room.roomType.standard)))
    }
    
    
}
