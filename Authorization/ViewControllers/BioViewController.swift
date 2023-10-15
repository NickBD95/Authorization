//
//  BioViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 11.10.2023.
//

import UIKit

final class BioViewController: UIViewController {

        
    @IBOutlet weak var textBioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textBioLabel.text = user.person.description.info
    }
    



}
