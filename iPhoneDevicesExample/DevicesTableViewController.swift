//
//  DevicesTableViewController.swift
//  iPhoneDevicesExample
//
//  Created by Murat Menzilci on 18.10.2021.
//

import UIKit

class DevicesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhoneTableViewCell
        cell.phoneImg.image = UIImage(named: "13promax")
        cell.phoneLabel.text = "Hello World"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
