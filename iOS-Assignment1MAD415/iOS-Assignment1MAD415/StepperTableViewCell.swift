//
//  StepperTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class StepperTableViewCell: UITableViewCell {

    @IBAction func stepperControl(_ sender: UIStepper) {
        stepperValue.text = String(Int(sender.value))
    }
    @IBOutlet weak var stepperValue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
