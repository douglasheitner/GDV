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
        imageView.backgroundColor = .yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 6).isActive = true
        
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
