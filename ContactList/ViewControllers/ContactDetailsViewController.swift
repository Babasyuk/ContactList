//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Артём on 02.12.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Email:\(person.phoneNumber)"
        emailLabel.text = "Email:\(person.email)"

    }
    

}
