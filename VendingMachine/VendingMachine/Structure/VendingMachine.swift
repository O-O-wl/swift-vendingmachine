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
    func handleStatistic(_ handler: ([String: Int]) -> Void)
}

struct VendingMachine: StatePrintable {
    
    private var balence: Money
    private var inventory: Inventory
    private var strategy: StateHandleable?
    
    init(balence: Money,
         inventory: Inventory) {
        self.balence = balence
        self.inventory = inventory
    }
    
    func setStrategy(_ strategy: StateHandleable) {
        self.strategy = strategy
    }
    
    func handleBalence(_ handler: (Money) -> Void) {
        handler(balence)
    }
    
    func excute() {
        let state = (balence:balence, inventory:inventory)
        let result = strategy.handle(state)
    }
    
    func handleStatistic(_ handler: ([String: Int]) -> Void) {
        handler(inventory.statistics())
    }
    
}
