//
//  SliderTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class SliderTableViewCell: UITableViewCell {

    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    
    @IBAction func sliderControl(_ sender: UISlider) {
        sliderValue.text = String(Int(mySlider.value*100))
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        sliderValue.text = String(Int(mySlider.value*100))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
