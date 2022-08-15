//
//  WelcomeViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 14.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
}
