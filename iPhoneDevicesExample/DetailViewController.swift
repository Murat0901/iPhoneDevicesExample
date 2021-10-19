//
//  DetailViewController.swift
//  iPhoneDevicesExample
//
//  Created by Murat Menzilci on 19.10.2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneImg: UIImageView!
    var detailLabel: String = ""
    var imageDetail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = detailLabel
        phoneImg.image = UIImage(named: imageDetail)
    }
    


}
