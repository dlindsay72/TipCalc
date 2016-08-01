//
//  ViewController.swift
//  TipBeeyatch!!
//
//  Created by Dan Lindsay on 2016-08-01.
//  Copyright © 2016 Dan Lindsay. All rights reserved.
//

import UIKit

extension Double {
    func roundToPlaces(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}

class TipBeeyatchVC: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var splitSliderLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    
    // MARK: - Properties
    
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    
    
    var tipPercentAmount = Int()
    var tipPercentAsDecimalValue = Double()
    var tipTotal = Double()
  //  var totalBillAmount = Double()
    var numberOfPersons = Int()
    var splitTotalAmount = Double()
    var totalBill = Double()
    var totalBillAmountEntered = Double()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    // MARK: - Functions
    
    @IBAction func tipSliderMoved(_ sender: AnyObject) {
        
        tipPercentAmount = Int(tipPercentSlider.value)
        calcTip()
        updateUI()

        
    }
    
   
    @IBAction func splitSliderMoved(_ sender: AnyObject) {
        numberOfPersons = Int(splitSlider.value)
        splitSliderLabel.text = "Split \(numberOfPersons)"
        splitTotalAmount = Double(totalBill / Double(numberOfPersons)).roundToPlaces(places: 2)
        splitAmountLabel.text = "$\(splitTotalAmount)"
    }
    
    @IBAction func billAmountEntered(_ sender: AnyObject) {
        
        calcTip()

        
    }
    
    func calcTip() {
        
        if let totalBillAmount = Double(billAmountTextField.text!) {
            totalBillAmountEntered = totalBillAmount
        }
        
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = totalBillAmountEntered
        
        tipCalc.calculateTip()
    }
    
    func updateUI() {
        tipPercentLabel.text = "Tip \(tipPercentAmount)%"
        
        tipPercentAsDecimalValue = Double(tipPercentAmount) * 0.01
        tipTotal = Double(totalBillAmountEntered * tipPercentAsDecimalValue).roundToPlaces(places: 2)
        
        
        tipAmountLabel.text = "$\(tipTotal)"
        totalBill = Double(totalBillAmountEntered + tipTotal).roundToPlaces(places: 2)
        
        totalAmountLabel.text = "$\(totalBill)"
    }
    
    


}

