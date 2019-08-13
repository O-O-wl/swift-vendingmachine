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
    
    /// EnergyDrink 초기화 이니셜라이저
    /// - Parameter brand: 제조사명
    /// - Parameter capacity: 용량
    /// - Parameter price: 가격
    /// - Parameter name: 상품명
    /// - Parameter productDate: 제조일자
    /// - Parameter isSugerFree: 무설탕 여부
    /// - Parameter cocaberryContent: 카페인 함유량 ⚠️ capacity보다 큰 수를 입력하면 capacity로 자동 조정됩니다.
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "에너지 드링크",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         caffeineContent: Int = 50) {
        self.caffeineContent = caffeineContent > capacity ? capacity : caffeineContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   isSugerFree: isSugerFree)
    }
    
}
