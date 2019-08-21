//
//  MoneyInsert.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct MoneyInsertStrategy: StateHandleable {
    let moneyToAdd: Money
    
    func handle(_ before: State) -> State {
        let balence  = before.balence + moneyToAdd
        return (balence, before.inventory)
    }
}
