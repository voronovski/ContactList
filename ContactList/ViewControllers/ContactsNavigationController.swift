//
//  ContactsNavigationController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/11/23.
//

import UIKit

class ContactsNavigationController: UINavigationController {

    // MARK: - Public properties
    var persons: [Person]!

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactListViewController else { return }
        contactVC.persons = persons
    }
}
