//
//  PersonViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 20.08.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var nameCompanyLabel: UILabel!
    @IBOutlet var profesionLabel: UILabel!
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 4
        }
    }
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        nameCompanyLabel.text = user.person.company
        profesionLabel.text = user.person.profesion
        title = user.person.fullName
        photoImage.image = UIImage(named: "it's me")
    }
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioUserVC = segue.destination as? BioUserViewController else { return}
        bioUserVC.user = user
    }
  
}
