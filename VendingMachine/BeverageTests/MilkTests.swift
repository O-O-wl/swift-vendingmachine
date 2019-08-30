//
//  MilkTests.swift
//  BeverageTests
//
//  Created by 이동영 on 14/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class MilkTests: XCTestCase {
    
    func testMilkDescription() {
        
        //Given
        let brand = "코드스쿼드"
        let capacity = 200
        let price = 500
        let name = "우유"
        let current =  Date()
        
        let beverage = Milk(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: current)
        let expected = "\(brand), \(capacity)ml, \(price)원, \(name), \(current.text)"
        
        //When
        let result = beverage.description
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func testStrawberryMilk() {
        
        //Given
        let brand = "서울우유"
        let capacity = 200
        let price = 500
        let name = "딸기우유"
        let current =  Date()
        let strawberryContent = 50
        let strawberryMilk = StrawberryMilk(brand: brand,
                                            capacity: capacity,
                                            price: price,
                                            name: name,
                                            productDate: current,
                                            strawberryContent: strawberryContent)
        let expected = true
        
        //When
        let result = strawberryMilk.isSweet
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func testChocolateMilk() {
        
        //Given
        let brand = "GS25"
        let capacity = 500
        let price = 500
        let name = "스누피 초코우유"
        let current =  Date()
        let chocolateContent = 50
        let chocolateMilk = ChocolateMilk(brand: brand,
                                            capacity: capacity,
                                            price: price,
                                            name: name,
                                            productDate: current,
                                            chocolateContent: chocolateContent)
        let expected = true
        
        //When
        let result = chocolateMilk.isSweet
        
        //Then
        XCTAssertEqual(result, expected)
    }
    
}
