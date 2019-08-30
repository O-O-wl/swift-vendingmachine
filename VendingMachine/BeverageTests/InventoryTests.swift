//
//  InventoryTests.swift
//  BeverageTests
//
//  Created by 이동영 on 17/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class InventoryTests: XCTestCase {
    //Given
    let givenMoney = Money(value: 10000)
    let expensiveEnergyDrink = EnergyDrink(price: 10001)
    let hotAmericano = Americano(temperature: 100)
    let dueCola = Cola(productDate: Date(timeIntervalSince1970: 1))
    var products: [Product] = []
    var inventory: Inventory!
    
    override func setUp() {
        //Given
        products.append(StrawberryMilk())
        products.append(StrawberryMilk())
        products.append(ChocolateMilk())
        products.append(self.hotAmericano)
        products.append(Cola())
        products.append(self.dueCola)
        products.append(self.expensiveEnergyDrink)
        
        inventory = .init(products: products)
    }
    
    func testFilterHot() {
        //Given
        let wrong = [dueCola]
        let expected = [hotAmericano]
        //When
        let result = inventory.filter(by: .hot)
        //Then
        XCTAssertEqual(result.count, expected.count)
        XCTAssertTrue(result.first! === expected.first!)
        XCTAssertFalse(result.first! === wrong.first!)
    }
    
    func testFilterDue() {
        //Given
        let wrong = [hotAmericano]
        let expected = [dueCola]
        //When
        let result = inventory.filter(by: .due)
        //Then
        XCTAssertEqual(result.count, expected.count)
        XCTAssertTrue(result.first! === expected.first!)
        XCTAssertFalse(result.first! === wrong.first!)
    }
    
    func testFilterAvailable() {
        //Given
        let wrong = [expensiveEnergyDrink]
        let expected: [Product] = products.filter { $0 !== expensiveEnergyDrink }
        //When
        let result = inventory.filter(by: .available(balence: givenMoney))
        //Then
        XCTAssertEqual(result.count, expected.count)
        XCTAssertTrue(result.first! === expected.first!)
        XCTAssertFalse(result.first! === wrong.first!)
    }
    
    func testStatistics() {
        //Given
        
        //When
        let result = inventory.statistic
        //Then
        XCTAssertEqual(result.count, 5)
        
    }
}
