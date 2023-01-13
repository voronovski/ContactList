//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/10/23.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public properties
    var person: Person!
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name
        phoneLabel.text = "phone: " + person.phone
        emailLabel.text = "email: " + person.email
    }
}
