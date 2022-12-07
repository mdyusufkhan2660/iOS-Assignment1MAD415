//
//  SwitchTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet weak var switchStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func mySwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            switchStatus.text = "ON"
        }
        else{
            switchStatus.text = "OFF"
        }
    }
}
