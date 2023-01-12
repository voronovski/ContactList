//
//  TabBarController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/11/23.
//

import UIKit

final class TabBarController: UITabBarController {

    // MARK: - Private properties
    private let persons = Person.getPersons()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSender()
    }
    
    // MARK: - Private methods
    private func dataSender() {
        viewControllers?.forEach { viewController in
            if let contactsNC = viewController as? ContactsNavigationController {
                guard let contactsVC = contactsNC.viewControllers.first as? ContactListViewController else { return }
                contactsVC.persons = persons
            } else if let detailNC = viewController as? DetailsNavigationController {
                guard let detailVC = detailNC.viewControllers.first as? DetailListTableViewController else { return }
                detailVC.persons = persons
            }
        }
    }
}
