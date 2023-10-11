//
//  ResumeViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 11.10.2023.
//

import UIKit

class ResumeViewController: UIViewController {
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhoto.image = UIImage(named: person.person.picture)

        nameLabel.text = person.person.name
        surnameLabel.text = person.person.surname
        companyLabel.text = person.person.company
        departmentLabel.text = person.person.department
        jobTitleLabel.text = person.person.jobtitle
    }
    
    override func viewDidLayoutSubviews() {
        profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVS = segue.destination as? BioViewController else {return}
        thirdVS.person = person
        thirdVS.title = "\(person.person.name) \(person.person.surname) Bio"
        thirdVS.view.backgroundColor = .lightGray
        }
}
