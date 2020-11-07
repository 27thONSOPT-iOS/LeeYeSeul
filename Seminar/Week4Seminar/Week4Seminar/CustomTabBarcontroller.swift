//
//  CustomTabBarcontroller.swift
//  Week4Seminar
//
//  Created by 이예슬 on 11/7/20.
//

import UIKit

class CustomTabBarcontroller: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    
    func setTabBar() {
        guard let orangeVC = self.storyboard?.instantiateViewController(identifier: "OrangeVC") as? OrangeVC,
              let skyblueVC = self.storyboard?.instantiateViewController(identifier: "SkyblueVC") as? SkyblueVC
        else { return
        }
        orangeVC.tabBarItem.title = "Home"
        orangeVC.tabBarItem.image = UIImage(systemName: "house")
        orangeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        skyblueVC.tabBarItem.title = "Profile"
        skyblueVC.tabBarItem.image = UIImage(systemName: "person")
        skyblueVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        setViewControllers([orangeVC, skyblueVC], animated: true) }
}
