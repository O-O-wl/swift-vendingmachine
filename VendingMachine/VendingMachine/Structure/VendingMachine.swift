//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

typealias State = (balence: Money, inventory: Inventory)

protocol StatePrintable {
    func handleBalence(_ handler: (Money) -> Void)
    func handleStatistic(_ handler: ([(String, Int)]) -> Void)
}

struct VendingMachine {
    
    private var balance: Money
    private var inventory: Inventory
    private var strategy: StateHandleable?
    
    init(balance: Money,
         inventory: Inventory) {
        self.balance = balance
        self.inventory = inventory
    }
    
    mutating func setStrategy(_ strategy: StateHandleable) {
        self.strategy = strategy
    }
    
    mutating func execute() throws { 
        guard let strategy = strategy else { return }
        let state = (balence: balance, inventory: inventory)
        let result = strategy.handle(state)
        try resultHandle(result)
    }
    
    mutating func resultHandle(_ result: Result<State, Error>) throws {
        switch result {
        case .success(let newState):
            self.balance = newState.balence
            self.inventory = newState.inventory
        case .failure(let error):
            throw error
        }
    }
    
}
// MARK: - + StatePrintable
extension VendingMachine: StatePrintable {
    
    func handleBalence(_ handler: (Money) -> Void) {
        handler(balance)
    }
    
    func handleStatistic(_ handler: ([(String, Int)]) -> Void) {
        handler(inventory.statistic)
    }
    
    func handleStrategy(_ handler: (StateHandleable) -> Void) {
        guard
            let strategy = strategy
            else { return }
        handler(strategy)
    }
    
}

