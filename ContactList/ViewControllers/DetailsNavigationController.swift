//
//  DetailsNavigationController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/11/23.
//

import UIKit

final class DetailsNavigationController: UINavigationController {

    // MARK: - Public properties
    var persons: [Person]!

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? ContactListViewController else { return }
        detailVC.persons = persons
    }
}
