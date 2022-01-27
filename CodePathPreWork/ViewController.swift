//
//  ViewController.swift
//  CodePathPreWork
//
//  Created by Jennifer Zecena on 1/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var totalBillPerPerson: UILabel!
    @IBOutlet weak var billView: UIView!
    @IBOutlet weak var peopleView: UIView!
    @IBOutlet weak var tipTotalView: UIView!
    @IBOutlet weak var BT: UIView!
    @IBOutlet weak var PT: UIView!
    @IBOutlet weak var totalView: UILabel!
    
    @IBOutlet weak var tipPercentView: UIView!
    @IBOutlet weak var numOfPeopleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billView.layer.cornerRadius = 5
        peopleView.layer.cornerRadius = 5
        tipTotalView.layer.cornerRadius = 5
        tipPercentView.layer.cornerRadius = 5
        BT.layer.cornerRadius = 5
        PT.layer.cornerRadius = 5
        totalView.layer.masksToBounds = true
        totalView.layer.cornerRadius = 5
        
        billAmountTextField.becomeFirstResponder()

       
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let numOfPeople = Double(numOfPeopleField.text!) ?? 1
        let totalPerPerson = total / numOfPeople
        
        //Update labels
        tipAmountLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total)
       
        totalBillPerPerson.text = String(format:"$%.2f", totalPerPerson)
        

    }
    
}

