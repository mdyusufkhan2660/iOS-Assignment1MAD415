//
//  ViewController.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    @IBOutlet weak var myTable: UITableView!
    var cellIdentifiers:[String] = ["labelCell", "ButtonTableViewCell", "switchCell", "segmentCell", "imageCell", "textfieldCell", "sliderCell", "progressCell", "stepperCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.dataSource = self
        
        let labelCellNib = UINib(nibName: "LabelTableViewCell", bundle: nil)
        myTable.register(labelCellNib, forCellReuseIdentifier: "labelCell")
        
        
        myTable.register(ButtonTableViewCell.nib(), forCellReuseIdentifier: ButtonTableViewCell.identifier)
        
        let switchCellNib = UINib(nibName: "SwitchTableViewCell", bundle: nil)
        myTable.register(switchCellNib, forCellReuseIdentifier: "switchCell")
        
        let segmentCellNib = UINib(nibName: "SegmentTableViewCell", bundle: nil)
        myTable.register(segmentCellNib, forCellReuseIdentifier: "segmentCell")
        
        let imageCellNib = UINib(nibName: "ImageTableViewCell", bundle: nil)
        myTable.register(imageCellNib, forCellReuseIdentifier: "imageCell")
        
        let textfieldCellNib = UINib(nibName: "TextFieldTableViewCell", bundle: nil)
        myTable.register(textfieldCellNib, forCellReuseIdentifier: "textfieldCell")
        
        let sliderCellNib = UINib(nibName: "SliderTableViewCell", bundle: nil)
        myTable.register(sliderCellNib, forCellReuseIdentifier: "sliderCell")
        
        let progressCellNib = UINib(nibName: "ProgressTableViewCell", bundle: nil)
        myTable.register(progressCellNib, forCellReuseIdentifier: "progressCell")
        
        
        let stepperCellNib = UINib(nibName: "StepperTableViewCell", bundle: nil)
        myTable.register(stepperCellNib, forCellReuseIdentifier: "stepperCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellIdentifiers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if(cellIdentifiers[indexPath.row] == "ButtonTableViewCell"){
            let cell = myTable.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.row], for: indexPath) as! ButtonTableViewCell
            cell.delegate = self
            return cell
        }
        else{
            let cell = myTable.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.row], for: indexPath)
            return cell
        }
    }


}
extension ViewController: ButtonTableViewCellDelegate{
    func myButton(with title: String) {
        // Create Alert
        var dialogMessage = UIAlertController(title: "Alert Box Title", message: "Alert Box Message", preferredStyle: .alert)
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        // Create Cancel button with action handlder
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
        }
        //Add OK and Cancel button to an Alert object
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        // Present alert message to user
        self.present(dialogMessage, animated: true, completion: nil)
    }
}

