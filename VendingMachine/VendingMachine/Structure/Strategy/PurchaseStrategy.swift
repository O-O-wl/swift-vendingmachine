//
//  PurchaseProductStrategy.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct PurchaseStrategy: StateHandleable {
    private let productToPurchase: Product
    
    func handle(_ before: State) -> Result<State, Error> {
        var inventory = before.inventory
        guard
            productToPurchase.productPrice < before.balence
            else { return .failure(PurchaseError.lowBalence) }
        guard
            let product = inventory.takeOut(productToPurchase)
            else { return .failure(PurchaseError.outOfStock) }
        
        let balence = before.balence - product.productPrice
        return .success((balence, inventory))
        
    }
    
    enum PurchaseError: Error {
        case lowBalence
        case outOfStock
    }
}
