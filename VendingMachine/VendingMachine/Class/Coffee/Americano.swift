//
//  ㅁmericano.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Americano: Coffee {
    var waterContent: Int
    
    // MARK: - Methods
        init(brand: String = "제조사",
             capacity: Int = 0,
             price: Int = 0,
             name: String = "아메리카노",
             productDate: Date = Date(),
             isSugerFree: Bool = false,
             coffeeBean: CoffeeBean = .arabica,
             waterContent: Int = 300) {
            self.waterContent = waterContent
            
            super.init(
                brand: brand,
                capacity: capacity,
                price: price,
                name: name,
                productDate: productDate,
                coffeeBean: coffeeBean)
        }
}
