//
//  ReservationViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 4/21/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class ReservationViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var reservations: [Reservation]?
    var headerList = ["Upcoming", "Previous"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView?.backgroundColor = UIColor.init(red: 51/255, green: 153/255, blue: 255/255, alpha: 1)
        collectionView?.register(ReservationCell.self, forCellWithReuseIdentifier: "cellId")
        navigationItem.title = "Reservations"
        navigationItem.titleView = UIImageView.init(image: #imageLiteral(resourceName: "GDV-logo-smal"))

        fetchReservations()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (reservations?.count)!
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! ReservationCell
        cell.backgroundColor = UIColor.init(red: 245/255, green: 251/255, blue: 243/255, alpha: 1)
        cell.clipsToBounds = true
        cell.resortNameLabel.text = reservations?[indexPath.item].resortName
        cell.checkInLabel.text = reservations?[indexPath.item].checkInDate
        cell.checkOutLabel.text = reservations?[indexPath.item].checkOutDate
        
        if let res = reservations?[indexPath.item].reservationNumber {
            cell.reservationNumber.text = "Reservation: \(res)"
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 120)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(ReservationDetailsViewController(reservation: (reservations?[indexPath.item])!), animated: true)
    }
    
    func fetchReservations() {
        navigationItem.largeTitleDisplayMode = .never
        
        reservations = [
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "OCEAN CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "OCEAN HIGH".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717826, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "ATLANTIC CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "ATLANTIC CITY".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "CAPE MAY".capitalized, guestState: "NJ", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "CAPE MAY Resort".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "OCEAN CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "OCEAN HIGH".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717826, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "ATLANTIC CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "ATLANTIC CITY".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "CAPE MAY".capitalized, guestState: "NJ", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "CAPE MAY Resort".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "OCEAN CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "OCEAN HIGH".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717826, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "ATLANTIC CITY".capitalized, guestState: "MD", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "ATLANTIC CITY".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594),
            Reservation.init(reservationNumber: 717226, guestName: "LOUIS GARCIA".capitalized, guestAddress: "109 ASTERBROOKE DR".capitalized, guestCity: "CAPE MAY".capitalized, guestState: "NJ", guestZip: 21842, guestMobilePhone: 3867175884, guestHomePhone: 3867175884, inventoryId: 562475, resortName: "CAPE MAY Resort".capitalized, resortAddress: "503 32ND ST", resortCity: "OCEAN CITY".capitalized, resortState: "MD", resortZip: 21842, resortCountry: "USA", checkInDate: "3/9/2018 Friday 6:00PM", checkOutDate: "3/16/2018 Friday 12:00PM", unitNumber: "TBA3", unitSize: "3 Bedroom", occupancy: 9, resortConfirmation: "70661368318524001", unitPhone: nil, lockboxCombination: nil, specialConditions: nil, reconfirmationPhoneNumber: 4105200003, reconfirmationInfo: "RECONFIRMATION IS MANDATORY 24 HOURS PRIOR TO CHECK-IN. Notify the staff if you are arriving after 4:00 pm, additional check-in instructions might apply. NAME CHANGES WILL ONLY BE ACCEPTED UP UNTIL THE WEDNESDAY PRIOR TO CHECK-IN.", checkInInfo: nil, emergencyPhone: 8006397594)]
        
    }
}
