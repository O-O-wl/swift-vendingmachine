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
    
    /// Cola 초기화 이니셜라이저
    /// - Parameter brand: 제조사명
    /// - Parameter capacity: 용량
    /// - Parameter price: 가격
    /// - Parameter name: 상품명
    /// - Parameter productDate: 제조일자
    /// - Parameter isSugerFree: 무설탕 여부
    /// - Parameter cocaberryContent: 코카나무 열매 함유량 ⚠️ capacity보다 큰 수를 입력하면 capacity로 자동 조정됩니다.
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "콜라",
         productDate: Date = Date(),
         isSugerFree: Bool = false,
         cocaberryContent: Int = 20) {
        self.cocaberryContent = cocaberryContent > capacity ? capacity : cocaberryContent
        
        super.init(brand: brand,
                   capacity: capacity,
                   price: price,
                   name: name,
                   productDate: productDate,
                   isSugerFree: isSugerFree)
    }
}
