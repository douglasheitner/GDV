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
        
//        let tabAppearance = UITabBarItem.appearance()
//        let tabAttributes = [NSFontAttributeName: UIFont(name: "OpenSans", size: 8)!]
//        tabAppearance.setTitleTextAttributes(tabAttributes, for: .normal)
        
        
        tabBar.isTranslucent = false
        
        let layout = UICollectionViewFlowLayout()
        let navController = UINavigationController(rootViewController: ReservationViewController(collectionViewLayout: layout))
        navController.title = "Reservations"
        navController.tabBarItem.image = #imageLiteral(resourceName: "imgReservation")
        
        
        let membershipController = UINavigationController(rootViewController: MembershipViewController())
        membershipController.title = "Membership"
        membershipController.tabBarItem.image = #imageLiteral(resourceName: "imgMembership")
        
        let helpVC = UINavigationController(rootViewController: HelpViewController())
        helpVC.title = "Contact Us"
        helpVC.tabBarItem.image = #imageLiteral(resourceName: "imgPhone")

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
