//
//  Beverage.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Beverage {
    let brand: String
    let capacity: Int
    let price: Int
    let name: String
    let productDate: Date
    
    init(
        brand:String = "제조사",
        capacity: Int = 0,
        price: Int = 0,
        name: String = "음료",
        productDate: Date = Date()
        ) {
        self.brand = brand
        self.capacity = capacity
        self.price = price
        self.name = name
        self.productDate = productDate
    }
}
