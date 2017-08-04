//
//  Reservation.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/1/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import Foundation

class Reservation {
    
    private let _reservationNumber: Int
    private let _resortName: String
    
    var reservationNumber: Int {
        get {
            return _reservationNumber
        }
    }
    
    var resortName: String {
        get {
            return _resortName
        }
    }
   
    init(reservationNumber: Int, resortName: String) {
        
        self._reservationNumber = reservationNumber
        self._resortName = resortName
    }
}
