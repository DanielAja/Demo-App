//
//  ViewController.swift
//  tips
//
//  Created by Daniel Ajagbusi on 9/24/19.
//  Copyright © 2019 Daniel Ajagbusi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentSegment: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let tipPerc = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPerc[percentSegment.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2F", tip)
        totalLabel.text = String(format: "$%.2F", total)
    }
    
}

