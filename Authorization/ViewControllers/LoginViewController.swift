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
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        tabBarController.viewControllers?.forEach{ viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                if let secondVC = navigationVC.topViewController as? ResumeViewController {
                    secondVC.user = user
                    secondVC.title = "\(user.person.name) \(user.person.surname)"
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                with: "Wrong login or password!",
                and: "Please, check your login or password",
                textField: userNameTF)
            return false
        }
        return true
    }
    //
    
    @IBAction func forgotLoginOrPassword(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Forget your login?", and: "Your login is \(user.login)")
        : showAlert(with: "Forget your password?", and: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
