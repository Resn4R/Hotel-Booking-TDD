//
//  HotelService.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct HotelService {
    
    var hotelList: [Hotel] = []
    
    mutating func addHotel(_ hotel: Hotel) {
        hotelList.append(hotel)
    }
    
    func getHotel(at index: Int) -> Hotel {
        hotelList[index]
    }
    
    mutating func setRoom(number: Int, type: Room.roomType, in hotel: Hotel) {
        let room = Room(number: number, type: type)
        
        guard let index = hotelList.firstIndex(of: hotel) else { return }
        
        hotelList[index].rooms.append(room)
    }
    
}
