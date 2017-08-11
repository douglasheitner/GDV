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
        collectionView?.register(ReservationListHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerCell")
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerCell", for: indexPath) as! ReservationListHeader
            
//            if (indexPath[0] == 0) {
//                
//                header.headerText = "Upcoming"
//
//                return header
//                
//            } else if (indexPath[0] == 1) {
//                header.headerText = "Previews"
//                return header
//            }
//            header.headerText = "NOOO"
//            return header
//        default:
//            return UICollectionReusableView()
//        }
    }
    
    func fetchReservations() {
        navigationItem.largeTitleDisplayMode = .never
        
        reservations = [Reservation(reservationNumber: 123, resortName: "Resort 1"),
                        Reservation(reservationNumber: 123, resortName: "Resort 2"),
                        Reservation(reservationNumber: 123, resortName: "Resort 3"),
                        Reservation(reservationNumber: 123, resortName: "Resort 4"),
                        Reservation(reservationNumber: 123, resortName: "Resort 5"),
                        Reservation(reservationNumber: 123, resortName: "Resort 6")]
        
    }
}

class ReservationListHeader: UICollectionReusableView {
    
    let headerText: String?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        
        let headerLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont(name: "OpenSans-Semibold", size: 18)
            label.textColor = .white
            label.text = headerText
            return label
        }()
        
        self.addSubview(headerLabel)
        
        headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




























