//
//  MembershipViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/1/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class MembershipViewController: UIViewController {
    
    var membership: Membership

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, membership: Membership) {
        self.membership = membership
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        navigationItem.title = "GD652154"
        //navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "imgGDV-logo-short"))
    }
}
