//
//  wage.swift
//  window-shopper
//
//  Created by Zakary Kurzawski on 12/20/17.
//  Copyright © 2017 Zakary Kurzawski. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
