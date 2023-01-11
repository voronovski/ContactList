//
//  TabBarController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/11/23.
//

import UIKit

final class TabBarController: UITabBarController {

    private let persons = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactVC = segue.destination as? ContactListViewController {
            contactVC.persons = persons
        } else if let detailVC = segue.destination as? DetailListTableViewController {
            detailVC.persons = persons
        }
    }
}
