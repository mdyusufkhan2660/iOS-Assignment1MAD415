//
//  ProgressTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class ProgressTableViewCell: UITableViewCell {
    @IBOutlet weak var progressValue: UILabel!
    @IBOutlet weak var myProgress: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        progressValue.text = "\(Int(myProgress.progress*100))%"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
