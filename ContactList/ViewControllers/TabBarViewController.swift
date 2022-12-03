//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Артём on 01.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personsListsVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let sectionTableVC = viewControllers?.last as? SectionTableViewController else { return }

        let persons = Person.getContactsList()
        personsListsVC.persons = persons
        sectionTableVC.persons = persons
    }

}
