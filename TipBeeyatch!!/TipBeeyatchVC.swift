//
//  ViewController.swift
//  TipBeeyatch!!
//
//  Created by Dan Lindsay on 2016-08-01.
//  Copyright © 2016 Dan Lindsay. All rights reserved.
//

import UIKit

class TipBeeyatchVC: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var splitSliderLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    var tipPercentAmount = Double()
    var tipTotal = Double()
  //  var totalBillAmount = Double()
    var numberOfPersons = Int()
    var splitTotalAmount = Double()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func tipSliderMoved(_ sender: AnyObject) {
        
    }
    
   
    @IBAction func splitSliderMoved(_ sender: AnyObject) {
        
    }
    
    @IBAction func billAmountEntered(_ sender: AnyObject) {
        
        
        if let totalBillAmount = Double(billAmountTextField.text!) {
            totalAmountLabel.text = "$\(totalBillAmount)"
        } else {
            print("no amount entered")
        }
        
    }


}

