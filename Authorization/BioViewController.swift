//
//  BioViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 11.10.2023.
//

import UIKit

class BioViewController: UIViewController {

        
    @IBOutlet weak var textBioLabel: UILabel!
    
    var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textBioLabel.text = person.person.description.info
    }
    



}
