//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 06.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

   
    @IBOutlet weak var greetingUser: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUser.text = "Welcome, \(userName ?? "none")!"
    }
    

    @IBAction func logOutButtonPressed() {
    }
}
