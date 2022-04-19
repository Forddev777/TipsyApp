//
//  ResultsViewController.swift
//  TipsyApp
//
//  Created by suriya taothongkom on 15/4/2565 BE.
//

import UIKit

class ResultsViewController: UIViewController {


    @IBOutlet weak var tatalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    
    var result = "0.0"  // ค่าเริ่มต้น  = 0
    var tip = 10    // default = 10
    var split = 2   // default = 2 pelope
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        tatalLabel.text = result
        settingLabel.text =  "Split between \(split) people, with \(tip)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
