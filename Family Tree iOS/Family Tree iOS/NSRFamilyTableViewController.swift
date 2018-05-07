//
//  NSRFamilyTableViewController.swift
//  Family Tree iOS
//
//  Created by Nasir Ahmed Momin on 07/05/18.
//  Copyright © 2018 Nasir Ahmed Momin. All rights reserved.
//

import UIKit

class NSRFamilyTableViewController: UITableViewController {


    @IBOutlet weak var familyTableView: UITableView!
    
    private var family: Family?
    
    // MARK: View life Cycle
    deinit {
        print("deinit of NSRFamilyTableViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSRDataConstructor.constructFamilyData { (family) in
            self.family = family
            OperationQueue.main.addOperation({
                self.familyTableView.reloadData()
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning in NSRFamilyTableViewController")
    }
    
    
    // MARK: TableView DataSource Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (family?.children?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .value1, reuseIdentifier: nil)

        if let children = family?.children {
            let child = children[indexPath.row]
            cell.textLabel?.text = "Name: "+(String(describing: child.name))
            cell.detailTextLabel?.text = "Age: "+String.init(describing: child.age)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return family?.name
    }
 }
