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
        try? hotelService.setRoom(number: 101, type: .single, in: newHotel)
        
        XCTAssertEqual(hotelService.hotelList[0].rooms[0], Room(number: 101, type: .single))
    }
    
    
}
