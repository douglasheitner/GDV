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
        imageView.layer.cornerRadius = 87.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let arrivalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Arrival")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let departureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Depature")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let orangeBubble: UIView = {
        let bubble = UIView()
        bubble.backgroundColor = UIColor.init(red: 239/255, green: 129/255, blue: 9/255, alpha: 0.1)
        bubble.layer.cornerRadius = 87.5
        bubble.translatesAutoresizingMaskIntoConstraints = false
        bubble.clipsToBounds = true
        return bubble
    }()
    
    let blueBubble: UIView = {
        let bubble = UIView()
        bubble.backgroundColor = UIColor.init(red: 9/255, green: 234/255, blue: 239/255, alpha: 0.1)
        bubble.layer.cornerRadius = 87.5
        bubble.translatesAutoresizingMaskIntoConstraints = false
        bubble.clipsToBounds = true
        return bubble
    }()
    
    let greenBubble: UIView = {
        let bubble = UIView()
        bubble.backgroundColor = UIColor.init(red: 80/255, green: 247/255, blue: 11/255, alpha: 0.1)
        bubble.layer.cornerRadius = 87.5
        bubble.translatesAutoresizingMaskIntoConstraints = false
        bubble.clipsToBounds = true

        return bubble
    }()
    
    let resortNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SAND PEBBLES"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFontWeightLight)
        label.font = UIFont(name: "Avenir Next", size: 16)
        return label
    }()
    
    let checkInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Saturday 12/9/2017"
//        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightUltraLight)
        label.font = UIFont(name: "Avenir Next", size: 12)

        return label
    }()
    
    let checkOutLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Saturday 12/16/2017"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightUltraLight)
        label.font = UIFont(name: "Avenir Next", size: 12)

        return label
    }()
    
    let reservationNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Reservation #: 6949503"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightUltraLight)
        return label
    }()
    
    func setupViews() {
        addSubview(orangeBubble)
        orangeBubble.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        orangeBubble.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80).isActive = true
        orangeBubble.widthAnchor.constraint(equalToConstant: 175).isActive = true
        orangeBubble.heightAnchor.constraint(equalToConstant: 175).isActive = true
        
        addSubview(blueBubble)
        blueBubble.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        blueBubble.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -40).isActive = true
        blueBubble.widthAnchor.constraint(equalToConstant: 175).isActive = true
        blueBubble.heightAnchor.constraint(equalToConstant: 175).isActive = true
        
        addSubview(greenBubble)
        greenBubble.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        greenBubble.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        greenBubble.widthAnchor.constraint(equalToConstant: 175).isActive = true
        greenBubble.heightAnchor.constraint(equalToConstant: 175).isActive = true

        
        addSubview(resortThumbnailImageView)
        resortThumbnailImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        resortThumbnailImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 40).isActive = true
        resortThumbnailImageView.widthAnchor.constraint(equalToConstant: 175).isActive = true
        resortThumbnailImageView.heightAnchor.constraint(equalToConstant: 175).isActive = true
    
    
        addSubview(resortNameLabel)
        resortNameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        resortNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -30).isActive = true
        
        addSubview(arrivalImageView)
        arrivalImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        arrivalImageView.topAnchor.constraint(equalTo: resortNameLabel.bottomAnchor, constant: 7).isActive = true
        arrivalImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        arrivalImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        addSubview(checkInLabel)
        checkInLabel.leftAnchor.constraint(equalTo: arrivalImageView.rightAnchor, constant: 8).isActive = true
        checkInLabel.topAnchor.constraint(equalTo: resortNameLabel.bottomAnchor, constant: 4).isActive = true
    
        
        addSubview(departureImageView)
        departureImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        departureImageView.topAnchor.constraint(equalTo: checkInLabel.bottomAnchor, constant: 7).isActive = true
        departureImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        departureImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        addSubview(checkOutLabel)
        checkOutLabel.leftAnchor.constraint(equalTo: departureImageView.rightAnchor, constant: 8).isActive = true
        checkOutLabel.topAnchor.constraint(equalTo: checkInLabel.bottomAnchor, constant: 4).isActive = true
        
        addSubview(reservationNumber)
        reservationNumber.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        reservationNumber.topAnchor.constraint(equalTo: checkOutLabel.bottomAnchor, constant: 4).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
