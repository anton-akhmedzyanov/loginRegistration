//
//  WelcomeViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 14.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName.person.fullName)!"
        
    }
    
    @IBAction func unwindSeguetoWelcomeVC(_ segue: UIStoryboardSegue) {
        
    }
  
    
    
}
