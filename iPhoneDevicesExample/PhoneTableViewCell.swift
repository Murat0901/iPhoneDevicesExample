//
//  PhoneTableViewCell.swift
//  iPhoneDevicesExample
//
//  Created by Murat Menzilci on 18.10.2021.
//

import UIKit

class PhoneTableViewCell: UITableViewCell {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
