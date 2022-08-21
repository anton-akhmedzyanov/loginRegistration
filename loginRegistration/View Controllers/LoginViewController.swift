//
//  ViewController.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 14.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNaneTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserData()
    
    // MARK: - Functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVC = segue.destination as? UITabBarController else { return }
        guard let viewContollersTabbar = tabbarVC.viewControllers else { return }
        
        for controller in viewContollersTabbar {
            if let welcomeVC = controller as? WelcomeViewController {
                welcomeVC.userName = user
            } else if let navigationVC = controller as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
                personVC.user = user
            }
        }
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    
//MARK: - IBActions
    
    @IBAction func pressedLoginButton() {
        if userNaneTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Invalid login or password", message: "please, enter correct login and password") }
            else {
                performSegue(withIdentifier: "openWelcomeVC", sender: nil)
            }
   }
    @IBAction func helpNameButton() {
        showAlert(with: "Oops!", message: "user name is \(user.login)")
    }
    
    @IBAction func heplPasswordButton() {
        showAlert(with: "Oops!", message: "password is \(user.password)")
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

