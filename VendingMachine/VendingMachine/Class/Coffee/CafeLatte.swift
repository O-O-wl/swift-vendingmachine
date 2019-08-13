//
//  CafeLatte.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class CafeLatte: Coffee {
    // MARK: - Properties
    private let milk: Milk
    
    // MARK: - Methods
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "커피",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         coffeeBean: CoffeeBean = .arabica,
         milk: Milk = Milk()) {
        self.milk = milk
        
        super.init(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: productDate,
            coffeeBean: coffeeBean)
    }
}
