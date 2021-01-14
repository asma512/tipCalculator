//
//  ViewController.swift
//  tips
//
//  Created by Asma Sadia on 1/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var billPerPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billPerPerson.text = "$0.00"
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let people = Int(numberOfPeople.text!) ?? 0

        let tipPercentages = [0.10,0.15,0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let each  = total/Double(people)
        

        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text  = String(format: "$%.2f", total)
        billPerPerson.text  = String(format: "$%.2f", each)
        
        
    }
    
}

