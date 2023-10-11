//
//  Model.swift
//  Authorization
//
//  Created by Nikolai Grachev on 11.10.2023.
//

import Foundation
import UIKit


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "user",
            password: "password",
            person: Person(
                name: "Nickolai",
                surname: "Grachev",
                company: "Apple",
                department: "App development",
                jobtitle: "iOS dev",
                picture: "Dog",
                description: Description(
                    info: """
The path of the righteous man is beset on all sides by the inequities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who attempt to poison and destroy my brothers. And you will know my name is the Lord when I lay my vengeance upon thee.
"""
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let jobtitle: String
    let picture: String
    let description: Description
    
}

struct Description {
    let info: String
}


