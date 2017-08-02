//
//  ReservationDetailsViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/1/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class ReservationDetailsViewController: UIViewController{
    
    let res: Reservation
    
    init(reservation: Reservation) {
        
        res = reservation

        super.init(nibName: nil, bundle: nil)
        
        setupView()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let checkInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "OpenSans-Light", size: 12)
        return label
        
    }()
    
    func setupView() {
        checkInLabel.text = res.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(checkInLabel)
        checkInLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        checkInLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true

    }
}
