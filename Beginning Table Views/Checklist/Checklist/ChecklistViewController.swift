//
//  ChecklistViewController.swift
//  Checklist
//
//  Created by Maksim Nosov on 13/05/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            switch indexPath.row {
            case _ where indexPath.row % 5 == 0:
                label.text = "Take a jog"
            case _ where indexPath.row % 4 == 0:
                label.text = "Watch a movie"
            case _ where indexPath.row % 3 == 0:
                label.text = "Code an app"
            case _ where indexPath.row % 2 == 0:
                label.text = "Walk the dog"
            case _ where indexPath.row % 1 == 0:
                label.text = "Study design patterns"
            default:
                break
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

