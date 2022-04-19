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
  
  
    var tip = 0.10       // start  tip
    var numberOfPeople = 2  // numofpeople
    var sumbill = 0.0    // sum bill
    var finalResult = "0.0"   // result_total
    @IBAction func tipChanged(_ sender: UIButton) {
       
        
        billTextField.endEditing(true)        // textfextfield == true
        zeroPctButton.isSelected = false      //  ถ้ายังไม่ได้เลือกให้ค่าเป็น false
        tenPctButton.isSelected = false       //  ถ้ายังไม่ได้เลือกให้ค่าเป็น false
        twentyPctButton.isSelected = false    //  ถ้ายังไม่ได้เลือกให้ค่าเป็น false
        sender.isSelected = true              //  ถ้าเลือกให้ค่าเป็น true
        let buttonTitle = sender.currentTitle!    // เก็บค่า button ไว้ใน buttonTitle
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast()) // นำค่ามาเก็บไว้ collertion
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsANumber / 100
            // นำค่าที่ได้ มา / 100
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)  // เก็บค่าเลขซ้ายมือ จาก sender.value
        numberOfPeople = Int(sender.value)  // จำนวนคนที่ต้องการให้  tip
    }
    
    // เมื่อกด btn Calculate  เข้า  function calculatePressed //
    @IBAction func calculatePressed(_ sender: UIButton) {
         let bill = billTextField.text!   // check ว่า billtext != " "
        if bill != "" {
                sumbill = Double(bill)!
            let result = sumbill * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        
        }
        // หลังจาก กด  btn Calculate ถ้ามีการ พูกหน้าไว้ ระบุ withIdentifier : " "
       performSegue(withIdentifier: "gotoCal", sender: self)
    }
     // Story board segue ทำงาน
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gotoCal"{
                let dataVC =  segue.destination as! ResultsViewController
                    dataVC.result = finalResult
                    dataVC.tip = Int(tip * 100)
                    dataVC.split = numberOfPeople
        }
    }
    
}

