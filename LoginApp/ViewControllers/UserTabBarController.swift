//
//  TabBarViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 04.04.2023.
//

import UIKit

class UserTabBarController: UITabBarController {
    
    // MARK: - Public Properties
    var user: User?
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
