//
//  StrategyGenerator.swift
//  VendingMachine
//
//  Created by 이동영 on 22/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct StrategyFactory {
    static func create(input: Input) -> StateHandleable? {
        switch input {
        case ("1", let value):
            let money = Money(value: Int(value)!)
            return MoneyInsertStrategy(moneyToAdd: money)
        case ("2", let value):
            let index = Int(value)!
            return PurchaseStrategy(productToPurchaseIndex: index)
        default:
            return nil
        }
    }
}
