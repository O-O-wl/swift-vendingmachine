//
//  InStockStrategy.swift
//  VendingMachine
//
//  Created by 이동영 on 02/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InStockStrategy: StateHandleable {
    private let stockToAdd: Product
    private let completion: (String) -> Void
    
    init(stockToAdd: Product,
         completion: @escaping (String) -> Void) {
        self.stockToAdd = stockToAdd
        self.completion = completion
    }
    
    func handle(_ before: State) -> Result<State, Error> {
        var state = before
        state.inventory.addStock(stockToAdd)
        
        return .success(state)
    }
    
    func complete() {
        completion(stockToAdd.productName)
    }
    
}
