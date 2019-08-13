//
//  SweetMilk.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class StrawberryMilk: Milk {
    // MARK: - Properties
    private let strawberryContent: Int
    
    // MARK: - Methods
    init(
        brand: String = "제조사",
        capacity: Int = 0,
        price: Int = 0,
        name: String = "딸기 우유",
        productDate: Date = Date(),
        hasLowFat: Bool = false,
        hasLactase: Bool = false,
        strawberryContent: Int = 30) {
        self.strawberryContent = strawberryContent
        
        super.init(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: productDate,
            hasLowFat: hasLowFat,
            hasLactase: hasLactase)
    }
    
}
