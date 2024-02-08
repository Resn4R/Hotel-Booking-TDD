//
//  HotelService.swift
//  Hotel Booking TDD
//
//  Created by Vito Borghi on 08/02/2024.
//

import Foundation

struct HotelService {
    
    enum hotelError: Error {
    case hotelAlreadyExists, hotelDoesNotExist
    }
    
    var hotelList: [Hotel] = []
    
    mutating func addHotel(_ hotel: Hotel) throws {
        
        do {
            if hotelList.contains(where: {$0.id == hotel.id}) {
                throw hotelError.hotelAlreadyExists
            }
            hotelList.append(hotel)
        } catch {
            print("Hotel already exists.")
        }
    }
    
    func findHotel(by id: Int) -> Hotel? {
        hotelList.first(where: {$0.id == id})
    }
    
    mutating func setRoom(number: Int, type: Room.roomType, size: Room.roomSize, in hotel: Hotel) throws {
        let room = Room(number: number, type: type, size: size)
        
        guard let index = hotelList.firstIndex(of: hotel) else { throw hotelError.hotelDoesNotExist }
        
        hotelList[index].rooms.append(room)
    }
    
}
