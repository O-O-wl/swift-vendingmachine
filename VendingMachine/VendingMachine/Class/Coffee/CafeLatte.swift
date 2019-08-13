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
    private let milkContent: Int
    
    var isSoft: Bool {
        return milkContent > 200
    }
    
    // MARK: - Methods
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "라떼",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         coffeeBean: CoffeeBean = .arabica,
         milkContent: Int = 300) {
        self.milkContent = milkContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   coffeeBean: coffeeBean)
    }
}
