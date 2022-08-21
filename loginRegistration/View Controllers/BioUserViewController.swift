//
//  BioUserViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 20.08.2022.
//

import UIKit

class BioUserViewController: UIViewController {

    @IBOutlet var bioText: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(user.person.fullName)"
        bioText.text = user.person.bio
    }
    


}
