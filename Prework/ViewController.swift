//
//  ViewController.swift
//  Prework
//
//  Created by Kevin on 7/15/22.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func billAmount(_ sender: Any) {
        //this method is tied to the billAmountTextField when 'enter' is pressed this method will be called
        tipCalculator()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //this method will be called when the segment bar is clicked on
        tipCalculator()
    }
    
    func tipCalculator() {
        //this method grabs the information from text field and caculates the total amount based on tip percentage
        
        // Get bill amount from text field
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

