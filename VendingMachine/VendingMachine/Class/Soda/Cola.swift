//
//  Beer.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Cola: Soda {
    // MARK: - Properties
    private let cocaberryContent: Int
    
    var isAddictive: Bool {
        return cocaberryContent > 10
    }
    
    // MARK: - Methods
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "콜라",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         cocaberryContent: Int = 20) {
        self.cocaberryContent = cocaberryContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   isSugerFree: isSugerFree)
    }
}
