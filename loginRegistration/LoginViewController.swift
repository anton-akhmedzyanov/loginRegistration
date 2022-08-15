//
//  ViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 14.08.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNaneTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "Anton"
    let password = "12355"
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.userName = userNaneTF.text
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNaneTF.text != userName && passwordTF.text != password {
            showAlert(with: "Invalid login or password", message: "please, enter correct login and password")
        }
        return true
    }
    
//MARK: - IBActions
    
    @IBAction func pressedLoginButton() {
        if userNaneTF.text != userName && passwordTF.text != password {
            showAlert(with: "Invalid login or password", message: "please, enter correct login and password")
   }
    }
    @IBAction func helpNameButton() {
        showAlert(with: "Oops!", message: "user name is Anton")
    }
    
    @IBAction func heplPasswordButton() {
        showAlert(with: "Oops!", message: "password is 12345")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNaneTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private methods
    
    private func showAlert(with title: String, message: String) {
        let alertText = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonOk = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTF.text = ""
        }
        alertText.addAction(buttonOk)
        present(alertText, animated: true)
    }
}

