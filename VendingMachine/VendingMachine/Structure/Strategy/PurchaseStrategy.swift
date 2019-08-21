//
//  PurchaseProductStrategy.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct PurchaseStrategy: StateHandleable {
    let productToPurchase: Product
    
    func handle(_ before: State) -> State {
        let balence = before.balence - productToPurchase.productPrice
        return (balence, before.inventory)
    }
}
