//
//  MainViewController.swift
//  Global Discovery Vacation
//
//  Created by Douglas Heitner on 5/1/17.
//  Copyright © 2017 Global Connections, Inc. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        credentialCheck()
        
        self.delegate = self
        tabBar.isTranslucent = false
        
        let layout = UICollectionViewFlowLayout()
        let navController = UINavigationController(rootViewController: ReservationViewController(collectionViewLayout: layout))
        navController.title = "Reservations"
        navController.tabBarItem.image = #imageLiteral(resourceName: "Reservation")
        
        
        let membershipController = UINavigationController(rootViewController: MembershipViewController())
        membershipController.title = "Membership"
        membershipController.tabBarItem.image = #imageLiteral(resourceName: "Membership")
        
        let helpVC = HelpViewController()
        helpVC.title = "Contact Us"
        helpVC.tabBarItem.image = #imageLiteral(resourceName: "Phone")

        viewControllers = [navController,membershipController,helpVC]
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = UIColor.init(red: 229/255, green: 231/255, blue: 235/255, alpha: 1).cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ScrollingTransitionAnimator(tabBarController: tabBarController, lastIndex: tabBarController.selectedIndex)
    }
    
    
    func credentialCheck() {
        
        let isLoggedIn = false
        
        if isLoggedIn {
            self.perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
        
    }
    
    func showLoginController() {
        let loginVC = LoginViewController()
        self.present(loginVC, animated: true, completion: {
            //Do something else
        })
    }
}
