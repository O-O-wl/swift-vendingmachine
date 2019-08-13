//
//  Milk.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Milk: Beverage {
    var hasLowFat: Bool
    var hasLactase: Bool
    
    init(
        brand: String = "제조사",
        capacity: Int = 0,
        price: Int = 0,
        name: String = "우유",
        productDate: Date = Date(),
        hasLowFat: Bool = false,
        hasLactase: Bool = false ) {
        self.hasLowFat = hasLowFat
        self.hasLactase = hasLactase
        
        super.init(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: productDate)
    }
}
