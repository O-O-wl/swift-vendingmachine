//
//  RedBull.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class EnergyDrink: Soda {
    // MARK: - Properties
    private let caffeineContent: Int
    
    var isHighCaffeine: Bool {
        return 100 < self.caffeineContent
    }
    
    // MARK: - Methods
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "에너지 드링크",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         caffeineContent: Int = 50) {
        self.caffeineContent = caffeineContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   isSugerFree: isSugerFree)
    }
    
}
