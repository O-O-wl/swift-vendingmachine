//
//  SweetMilk.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class ChocolateMilk: Milk {
    // MARK: - Properties
    private let chocolateContent: Int
    
    // MARK: - Methods
    init(
        brand: String = "제조사",
        capacity: Int = 0,
        price: Int = 0,
        name: String = "초코 우유",
        productDate: Date = Date(),
        hasLowFat: Bool = false,
        hasLactase: Bool = false,
        chocolateContent: Int = 30) {
        self.chocolateContent = chocolateContent
        
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

