//
//  DetailListTableViewController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/11/23.
//

import UIKit

class DetailListTableViewController: UITableViewController {
    
    // MARK: - Public properties
    var persons: [Person]!
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].name
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneAndEmail", for: indexPath)
        let person = persons[indexPath.section]
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
        } else {
            var content = cell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "at")
            cell.contentConfiguration = content
        }
        return cell
    }
}
