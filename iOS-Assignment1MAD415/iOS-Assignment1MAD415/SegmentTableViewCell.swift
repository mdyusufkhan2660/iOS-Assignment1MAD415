//
//  SegmentTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class SegmentTableViewCell: UITableViewCell {
    @IBOutlet weak var segmentStatus: UILabel!
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch mySegment.selectedSegmentIndex{
        case 0:
            segmentStatus.text = "First"
        case 1:
            segmentStatus.text = "Second"
        default:
            break
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
}
