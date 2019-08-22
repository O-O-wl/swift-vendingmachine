//
//  PurchaseProductStrategy.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct PurchaseStrategy: StateHandleable {
    
    private let productToPurchaseIndex: Int
    
    init(productToPurchaseIndex: Int) {
        self.productToPurchaseIndex = productToPurchaseIndex
    }
    
    func handle(_ before: State) -> Result<State, Error> {
        var inventory = before.inventory
        guard
            let productToPurchase = inventory.search(at: productToPurchaseIndex)
            else { return .failure(PurchaseError.outOfStock) }
        guard
            productToPurchase.productPrice < before.balence,
            let product = inventory.takeOut(productToPurchase)
            else { return .failure(PurchaseError.lowBalance) }
        
        let balence = before.balence - product.productPrice
        return .success((balence, inventory))
    }
    
    // MARK: - PurchaseError
    enum PurchaseError: LocalizedError {
        case lowBalance
        case outOfStock
        
        var errorDescription: String? {
            switch self {
            case .lowBalance:
                return "잔액이 부족합니다. ❌💰"
            case .outOfStock:
                return "재고가 부족합니다. ❌🥤"
            }
        }
    }
}
