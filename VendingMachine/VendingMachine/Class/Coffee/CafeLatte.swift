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

    /// CafeLatte 초기화 이니셜라이저
    /// - Parameter brand: 제조사명
    /// - Parameter capacity: 용량
    /// - Parameter price: 가격
    /// - Parameter name: 상품명
    /// - Parameter productDate: 제조일자
    /// - Parameter coffeeBean: 커피원두
    /// - Parameter milkContent: 우유 함유량 ⚠️ capacity보다 큰 수를 입력하면 capacity로 자동 조정됩니다.
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "라떼",
         productDate: Date = Date(),
         coffeeBean: CoffeeBean = .arabica,
         milkContent: Int = 300) {
        self.milkContent = milkContent > capacity ? capacity : milkContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   coffeeBean: coffeeBean)
    }
}
