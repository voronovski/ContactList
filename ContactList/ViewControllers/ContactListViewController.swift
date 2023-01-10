//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Aleksei Voronovskii on 1/9/23.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    // MARK: - Public properties
    var persons = Person.getPersons()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVS = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVS.person = persons[indexPath.row]
    }

}
