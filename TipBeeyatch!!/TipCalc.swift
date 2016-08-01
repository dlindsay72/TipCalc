//
//  TipCalc.swift
//  TipBeeyatch!!
//
//  Created by Dan Lindsay on 2016-08-01.
//  Copyright © 2016 Dan Lindsay. All rights reserved.
//

import Foundation


class TipCalc {
    
    private var _billAmount = 0.0
    private var _tipAmount = 0.0
    private var _tipPercent = 0.0
    private var _totalAmount = 0.0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent // he didn't put the _ before tipPercent
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
    
}
