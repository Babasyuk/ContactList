//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Артём on 01.12.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailsVC.person = persons[indexPath.row]
        }
    }
}
