//
//  DevicesTableViewController.swift
//  iPhoneDevicesExample
//
//  Created by Murat Menzilci on 18.10.2021.
//

import UIKit

class DevicesTableViewController: UITableViewController {

    let deviceNames = ["iPhone Xs", "iPhone 12 Mini", "iPhone 13 Mini", "iPhone 11 Pro Max", "iPhone 12 Pro Max", "iPhone 13 Pro Max" ]
    let imageNames = ["xs", "12mini", "13mini", "11promax", "12promax", "13promax"]
    var passedLabel: String = ""
    var passedImg: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return deviceNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhoneTableViewCell
        cell.phoneImg.image = UIImage(named: imageNames[indexPath.row])
        cell.phoneLabel.text = deviceNames[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        passedLabel = deviceNames[indexPath.row]
        passedImg = imageNames[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController
        else{return}
        detailVC.detailLabel = passedLabel
        detailVC.imageDetail = passedImg
    }
}
