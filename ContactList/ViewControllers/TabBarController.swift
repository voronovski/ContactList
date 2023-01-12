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
                contactsNC.persons = persons
            } else if let detailNC = viewController as? DetailsNavigationController {
                detailNC.persons = persons
            }
        }
    }
}
