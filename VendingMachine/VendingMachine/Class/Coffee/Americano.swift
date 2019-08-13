//
//  ㅁmericano.swift
//  VendingMachine
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Americano: Coffee {
    private var waterContent: Int
    
    var isWatery: Bool {
        return waterContent > 300
    }O
    
    // MARK: - Methods
    
    /// Americano 초기화 이니셜라이저
    /// - Parameter brand: 제조사명
    /// - Parameter capacity: 용량
    /// - Parameter price: 가격
    /// - Parameter name: 상품명
    /// - Parameter productDate: 제조일자
    /// - Parameter coffeeBean: 커피원두
    /// - Parameter waterContent: 물 함유량 ⚠️ capacity보다 큰 수를 입력하면 capacity로 자동 조정됩니다.
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "아메리카노",
         productDate: Date = Date(),
         coffeeBean: CoffeeBean = .arabica,
         waterContent: Int = 300) {
        self.waterContent = waterContent > capacity ? capacity : waterContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   coffeeBean: coffeeBean)
    }
}
