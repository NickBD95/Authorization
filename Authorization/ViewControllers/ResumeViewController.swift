//
//  ResumeViewController.swift
//  Authorization
//
//  Created by Nikolai Grachev on 11.10.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhoto.image = UIImage(named: user.person.picture)

        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        departmentLabel.text = user.person.department
        jobTitleLabel.text = user.person.jobtitle
    }
    
    override func viewDidLayoutSubviews() {
        profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVS = segue.destination as? BioViewController else {return}
        thirdVS.user = user
        thirdVS.title = "\(user.person.name) \(user.person.surname) Bio"

        }
}
