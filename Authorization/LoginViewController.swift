//
//  ViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 06.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "user", passwordTF.text == "password" else {
            showAlert(with: "Error!", and: "Wrong user name or password!")
            userNameTF.text = ""
            passwordTF.text = ""
            return false
        }
        
        performSegue(withIdentifier: "welcome", sender: nil)
        return true
    }
//    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func logInButtonPressed() {
       shouldPerformSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Login:", and: "user")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Password:", and: "passwod")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Close", style: .default)
        
            alert.addAction(okAction)
            
            present(alert, animated: true)
        }
}
