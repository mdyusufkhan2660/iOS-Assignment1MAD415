//
//  ViewController.swift
//  iOS-Assignment1MAD415
//
//  Created by Yusuf Khan on 2022-12-06.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var myTable: UITableView!
    var cellIdentifiers:[String] = ["labelCell", "buttonCell", "switchCell", "segmentCell", "imageCell", "textfieldCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate = self
        myTable.dataSource = self
        
        let labelCellNib = UINib(nibName: "LabelTableViewCell", bundle: nil)
        myTable.register(labelCellNib, forCellReuseIdentifier: "labelCell")
        
        let buttonCellNib = UINib(nibName: "ButtonTableViewCell", bundle: nil)
        myTable.register(buttonCellNib, forCellReuseIdentifier: "buttonCell")
        
        let switchCellNib = UINib(nibName: "SwitchTableViewCell", bundle: nil)
        myTable.register(switchCellNib, forCellReuseIdentifier: "switchCell")
        
        let segmentCellNib = UINib(nibName: "SegmentTableViewCell", bundle: nil)
        myTable.register(segmentCellNib, forCellReuseIdentifier: "segmentCell")
        
        let imageCellNib = UINib(nibName: "ImageTableViewCell", bundle: nil)
        myTable.register(imageCellNib, forCellReuseIdentifier: "imageCell")
        
        let textfieldCellNib = UINib(nibName: "TextFieldTableViewCell", bundle: nil)
        myTable.register(textfieldCellNib, forCellReuseIdentifier: "textfieldCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellIdentifiers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.row], for: indexPath)
        
        return cell
        
    }


}

