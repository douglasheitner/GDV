//
//  ReservationCell.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 4/21/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class ReservationCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let resortThumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "resort-pic")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 2
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let resortNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SAND PEBBLES"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightRegular)
        return label
    }()
    
    let checkInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Check-In: Sat 12/9/2017"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        return label
    }()
    
    let checkOutLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Check-Out: Sat 12/16/2017"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        return label
    }()
    
    let reservationNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Reservation #: 6949503"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightLight)
        return label
    }()
    
    func setupViews() {
        addSubview(resortThumbnailImageView)
        resortThumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        resortThumbnailImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        resortThumbnailImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        resortThumbnailImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
    
        addSubview(separatorView)
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5.5).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        addSubview(resortNameLabel)
        resortNameLabel.leftAnchor.constraint(equalTo: resortThumbnailImageView.rightAnchor, constant: 8).isActive = true
        resortNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        resortNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -30).isActive = true
        
        addSubview(checkInLabel)
        checkInLabel.leftAnchor.constraint(equalTo: resortThumbnailImageView.rightAnchor, constant: 8).isActive = true
        checkInLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        checkInLabel.topAnchor.constraint(equalTo: resortNameLabel.bottomAnchor, constant: 4).isActive = true
        
        addSubview(checkOutLabel)
        checkOutLabel.leftAnchor.constraint(equalTo: resortThumbnailImageView.rightAnchor, constant: 8).isActive = true
        checkOutLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        checkOutLabel.topAnchor.constraint(equalTo: checkInLabel.bottomAnchor, constant: 4).isActive = true
        
        addSubview(reservationNumber)
        reservationNumber.leftAnchor.constraint(equalTo: resortThumbnailImageView.rightAnchor, constant: 8).isActive = true
        reservationNumber.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        reservationNumber.topAnchor.constraint(equalTo: checkOutLabel.bottomAnchor, constant: 4).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
