//
//  ViewController.swift
//  tip
//
//  Created by Chukwurado Umeaka on 9/3/20.
//  Copyright © 2020 Chukwurado Umeaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageAmount: UILabel!
    @IBOutlet weak var tipPercentController: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipPercentController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.selected)
        tipPercentController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.normal)


    }
    
    @IBAction func onTap(_ sender: Any) {
        // this makes the keyboard go away
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        tipPercentController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.selected)

        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipPercentController.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total label
        tipPercentageAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    

}

