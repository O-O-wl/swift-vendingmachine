//
//  Coffee.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Coffee: Beverage {
    private let coffeeBean: CoffeeBean
    
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "음료",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         coffeeBean: CoffeeBean = .arabica) {
        self.coffeeBean = coffeeBean
        
        super.init(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: productDate)
    }
}
// MARK: - + Nested Type CoffeeBean
extension Coffee {
    enum CoffeeBean {
        case arabica
        case robusta
        case luwak
    }
}
