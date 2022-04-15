//
//  ViewController.swift
//  TipsyApp
//
//  Created by suriya taothongkom on 12/4/2565 BE.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = true
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
       
          let data = self.twentyPctButton.currentTitle
        print(data)
        
    }
    
}

