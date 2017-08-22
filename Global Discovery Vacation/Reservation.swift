//
//  Reservation.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/1/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import Foundation

class Reservation {
    
    //Reservation
    let reservationNumber: Int
    
    //Guest Info
    let guestName: String
    let guestAddress: String
    let guestCity: String
    let guestState: String
    let guestZip: Int
    let guestMobilePhone: Int
    let guestHomePhone: Int
    
    //Accommodation Info
    let inventoryId: Int
    let resortName: String
    let resortAddress: String
    let resortCity: String
    let resortState: String
    let resortZip: Int
    let resortCountry: String
    let checkInDate: String
    let checkOutDate: String
    let unitNumber: String
    let unitSize: String
    let occupancy: Int
    let resortConfirmation: String
    let unitPhone: Int?
    let lockboxCombination: String?
    
    //Special Conditions
    let specialConditions: String?
    
    //Check-In Information
    let reconfirmationPhoneNumber: Int
    let reconfirmationInfo: String
    let checkInInfo: String?
    let emergencyPhone: Int
    
   
    init(reservationNumber: Int, guestName: String, guestAddress: String, guestCity: String, guestState: String, guestZip: Int, guestMobilePhone: Int, guestHomePhone: Int, inventoryId: Int, resortName: String, resortAddress: String, resortCity: String, resortState: String, resortZip: Int, resortCountry: String, checkInDate: String, checkOutDate: String, unitNumber: String, unitSize: String, occupancy: Int, resortConfirmation: String, unitPhone: Int?, lockboxCombination: String?, specialConditions: String?, reconfirmationPhoneNumber: Int, reconfirmationInfo: String, checkInInfo: String?, emergencyPhone: Int) {
        
        self.reservationNumber = reservationNumber
        self.guestName = guestName
        self.guestAddress = guestAddress
        self.guestCity = guestCity
        self.guestState = guestState
        self.guestZip = guestZip
        self.guestMobilePhone = guestMobilePhone
        self.guestHomePhone = guestHomePhone
        self.inventoryId = inventoryId
        self.resortName = resortName
        self.resortAddress = resortAddress
        self.resortCity = resortCity
        self.resortState = resortState
        self.resortZip = resortZip
        self.resortCountry = resortCountry
        self.checkInDate = checkInDate
        self.checkOutDate = checkOutDate
        self.unitNumber = unitNumber
        self.unitSize = unitSize
        self.occupancy = occupancy
        self.resortConfirmation = resortConfirmation
        self.unitPhone = unitPhone
        self.lockboxCombination = lockboxCombination
        self.specialConditions = specialConditions
        self.reconfirmationPhoneNumber = reconfirmationPhoneNumber
        self.reconfirmationInfo = reconfirmationInfo
        self.checkInInfo = checkInInfo
        self.emergencyPhone = emergencyPhone
    }
}
