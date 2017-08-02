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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView?.backgroundColor = UIColor.init(red: 51/255, green: 153/255, blue: 255/255, alpha: 1)
        collectionView?.register(ReservationCell.self, forCellWithReuseIdentifier: "cellId")
        navigationItem.titleView = UIImageView.init(image: #imageLiteral(resourceName: "imgGDV-logo-short"))
        fetchReservations()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (reservations?.count)!
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! ReservationCell
        cell.backgroundColor = UIColor.init(red: 245/255, green: 251/255, blue: 243/255, alpha: 1)
        cell.clipsToBounds = true
        cell.resortNameLabel.text = reservations?[indexPath.item].name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 120)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(ReservationDetailsViewController(reservation: (reservations?[indexPath.item])!), animated: true)
    }
    
    func fetchReservations() {
        reservations = [Reservation(resortName: "Resort 1"),
                        Reservation(resortName: "Resort 2"),
                        Reservation(resortName: "Resort 3")]
        
    }
}
