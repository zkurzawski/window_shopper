//
//  MainVC.swift
//  window-shopper
//
//  Created by Zakary Kurzawski on 12/19/17.
//  Copyright © 2017 Zakary Kurzawski. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyWageField: CurrencyTextField!
    @IBOutlet weak var itemPriceField: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4943918586, blue: 0.3727067411, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        hourlyWageField.inputAccessoryView = calcBtn
        itemPriceField.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = hourlyWageField.text, let priceTxt = itemPriceField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        hourlyWageField.text = ""
        itemPriceField.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
}

