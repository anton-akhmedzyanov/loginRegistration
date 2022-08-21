//
//  TabBarViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 20.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbarApperence = UITabBarAppearance()
        tabbarApperence.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabbarApperence
        tabBar.scrollEdgeAppearance = tabbarApperence
    }
    

    

}
