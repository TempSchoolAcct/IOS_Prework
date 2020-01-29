//
//  ViewController.swift
//  Tippy
//
//  Created by Socstudent on 1/28/20.
//  Copyright © 2020 Socstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Getting the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calc. the tip and total
        let tipPercentages = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentages[tipSegment.selectedSegmentIndex]
        let total = tip + bill
        
        // Displaying the output
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

