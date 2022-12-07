//
//  ButtonTableViewCell.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

protocol ButtonTableViewCellDelegate: AnyObject{
    func myButton(with title: String)
}

class ButtonTableViewCell: UITableViewCell {
    
    weak var delegate: ButtonTableViewCellDelegate?
    
    static let identifier = "ButtonTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "ButtonTableViewCell", bundle: nil)
    }
    @IBOutlet var button: UIButton!
    private var title: String = "Worked"
    @IBAction func myButton(_ sender: Any) {
        delegate?.myButton(with: title)
    }
    func configure(with title: String){
        self.title = title
        button.setTitle(title, for: .normal)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        button.setTitleColor(.label, for: .normal)
        // Initialization code
    }
    
}
