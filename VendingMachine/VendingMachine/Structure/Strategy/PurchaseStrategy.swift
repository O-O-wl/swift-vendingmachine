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
    private var completion: (String, Money) -> Void
    private var product: Product?
    
    init(productToPurchaseIndex: Int,
         completion: @escaping (String, Money) -> Void) {
        self.productToPurchaseIndex = productToPurchaseIndex
        self.completion = completion
    }
    
    mutating func handle(_ before: State) -> Result<State, Error> {
        var inventory = before.inventory
        guard
            let productToPurchase = inventory.search(at: productToPurchaseIndex)
            else { return .failure(PurchaseError.outOfStock) }
        guard
            before.balence >= productToPurchase.productPrice,
            let buyingProduct = inventory.takeOut(productToPurchase)
            else { return .failure(PurchaseError.lowBalance) }
        self.product = buyingProduct
        let balence = before.balence - buyingProduct.productPrice
        
        return .success((balence, inventory))
    }
    
    func complete() {
        guard let product = self.product else { return }
        completion(product.productName, product.productPrice)
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
