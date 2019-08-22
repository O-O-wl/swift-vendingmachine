//
//  MoneyInsert.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct MoneyInsertStrategy: StateHandleable {

    private let moneyToAdd: Money
    
    func handle(_ before: State) -> Result<State, Error> {
        let balence  = before.balence + moneyToAdd
        return .success((balence, before.inventory))
    }
    
}
