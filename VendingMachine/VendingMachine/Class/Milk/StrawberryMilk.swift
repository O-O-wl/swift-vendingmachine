//
//  SweetMilk.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class StrawberryMilk: Milk, Sweetable {
    // MARK: - Properties
    private let strawberryContent: Int
    var isSweet: Bool {
        return strawberryContent > 30
    }
    
    // MARK: - Methods
    
    /// initialize instance of StrawberryMilk
    ///
    /// - Parameter brand: brand name. default is "제조사".
    /// - Parameter capacity: product capacity. default is 0.
    /// - Parameter price: Int to  product price. default is 0.
    /// - Parameter name: a string product name. default is "딸기우유".
    /// - Parameter productDate: product date. default is current date.
    /// - Parameter hasLowFat: a bool indicating whether or not has low fat.  default is false.
    /// - Parameter hasLactase: a bool indicating whether or not has lactase. default is false.
    /// - Parameter strawberryContent: a int value how many contain strawberry
    /// ⚠️ if this parameter is greater than `capacity`, this value be allocated `conpacity`
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "딸기우유",
         productDate: Date = Date(),
         hasLowFat: Bool = false,
         hasLactase: Bool = false,
         strawberryContent: Int = 30) {
        self.strawberryContent = strawberryContent > capacity ? capacity : strawberryContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   hasLowFat: hasLowFat,
                   hasLactase: hasLactase)
    }
    
}
