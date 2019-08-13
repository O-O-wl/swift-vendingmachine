//
//  BeverageTests.swift
//  BeverageTests
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class BeverageTests: XCTestCase {

   
    func testBeverageDescription() {
        
        //Given
        let brand = "코드스쿼드"
        let capacity = 200
        let price = 500
        let name = "스위프 티"
        let current =  Date()
        
        let beverage = Beverage(
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
    
    func testSodaDescription() {
        
        //Given
        let brand = "코드스쿼드"
        let capacity = 200
        let price = 500
        let name = "탄산음료"
        let current =  Date()
        
        let beverage = Soda(
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
    
    func testCoffeeDescription() {
        
        //Given
        let brand = "코드스쿼드"
        let capacity = 200
        let price = 500
        let name = "커피"
        let current =  Date()
        
        let beverage = Coffee(
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

}
