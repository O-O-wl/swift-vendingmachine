//
//  StrategyTests.swift
//  BeverageTests
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest
@testable import VendingMachine

class StrategyTests: XCTestCase {
    
    //Given
    let givenMoney = Money(value: 10000)
    let expensiveEnergyDrink = EnergyDrink(price: 10001)
    let hotAmericano = Americano(temperature: 100)
    let dueCola = Cola(productDate: Date(timeIntervalSince1970: 1))
    var products: [Product] = []
    var inventory: Inventory!
    lazy var state: State = (balence: givenMoney, inventory: inventory!)
    var strategy: StateHandleable!
    
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
    
    func testMoneyInsert() {
        //Given
        strategy = MoneyInsertStrategy(moneyToAdd: Money(value: 5000), completion: nil)
        
        //When
        let result = strategy?.handle(state)
        guard
            case .success(let state)? = result
            else {
                XCTAssertTrue(false)
                return }
        //Then
        XCTAssertTrue(state.balence == Money(value: 15000))
    }
    
//    func testPurchaseWithSuccess() {
//        //Given
//        let cola = Cola()
//        let before = state.inventory.statistic[0].count
//        strategy = PurchaseStrategy(productToPurchase: cola)
//
//        //When
//        let result = strategy?.handle(state)
//
//        guard
//            case .success(let state)?  = result
//            else {
//                XCTAssertTrue(false)
//                return }
//        //Then
//        XCTAssertEqual(state.balence, givenMoney - cola.productPrice)
//        let coke = state.inventory.statistic.filter { $0.menu == cola.productDescription }
//
//        XCTAssertEqual(coke[0].count, before.advanced(by: -1))
//
//    }
//
//    func testPurchaseWithFailAboutBalance() {
//        //Given
//        let cola = Cola(price: 2000)
//        strategy = PurchaseStrategy(productToPurchase: cola)
//
//        //When
//        state.balence = Money(value: 1000)
//        let result = strategy?.handle(state)
//        guard
//            case .failure(let error)? = result
//            else {
//                XCTAssertTrue(false)
//                return }
//
//        //Then
//        XCTAssertEqual(error.localizedDescription, PurchaseStrategy.PurchaseError.lowBalance.localizedDescription)
//
//    }
//    
//    func testPurchaseWithFailAboutStock() {
//        //Given
//        let cola = Cola(price: 2000)
//        strategy = PurchaseStrategy(productToPurchaseIndex: cola)
//
//        //When
//        state.balence = Money(value: 1000)
//        let result = strategy?.handle(state)
//        guard
//            case .failure(let error)? = result
//            else {
//                XCTAssertTrue(false)
//                return }
//
//        //Then
//        XCTAssertEqual(error.localizedDescription, PurchaseStrategy.PurchaseError.lowBalance.localizedDescription)
//
//    }
    
}
