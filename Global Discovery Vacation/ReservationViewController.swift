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
        
        reservations = [Reservation(reservationNumber: 123, resortName: "PRESIDENTIAL SUITES BY LIFESTYLE - PUNTA CANA - ALL-INCLUSIVE RESORT".capitalized),
                        Reservation(reservationNumber: 123, resortName: "Beso Del Sol"),
                        Reservation(reservationNumber: 123, resortName: "CAROLINIAN BEACH RESORT".capitalized),
                        Reservation(reservationNumber: 123, resortName: "BRIGHTWATER SUITES".capitalized),
                        Reservation(reservationNumber: 123, resortName: "SEA SHELLS BEACH CLUB".capitalized),
                        Reservation(reservationNumber: 123, resortName: "LIFESTYLE RESIDENCE SUITES-ALL INCLUSIVE RESORT".capitalized)]
        
    }
}