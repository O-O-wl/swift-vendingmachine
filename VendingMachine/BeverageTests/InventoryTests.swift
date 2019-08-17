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
        let result = inventory.filter(option: .hot)
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
        let result = inventory.filter(option: .due)
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
        let result = inventory.filter(option: .available(balence: givenMoney))
        //Then
        XCTAssertEqual(result.count, expected.count)
        XCTAssertTrue(result.first! === expected.first!)
        XCTAssertFalse(result.first! === wrong.first!)
    }
    
    func testStatistics() {
        //Given
        let expected = ["딸기우유": 2,
                        "초코우유": 1,
                        "아메리카노": 1,
                        "콜라": 2,
                        "에너지드링크": 1]
        //When
        let result = inventory.statistics()
        //Then
        XCTAssertEqual(result["딸기우유"], expected["딸기우유"])
        XCTAssertEqual(result["초코우유"], expected["초코우유"])
        XCTAssertEqual(result["아메리카노"], expected["아메리카노"])
        XCTAssertEqual(result["콜라"], expected["콜라"])
        XCTAssertEqual(result["에너지드링크"], expected["에너지드링크"])
    }
}
