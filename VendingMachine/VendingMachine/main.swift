//
//  main.swift
//  VendingMachine
//
//  Created by JK on 11/10/2017.
//  Copyright © 2017 JK. All rights reserved.
//

import Foundation
// - MARK: - Set Up
<<<<<<< HEAD
let products = ProductFactory.createAll(quantity: 3)
let inventory = Inventory(products: products)
var vendingMachine = VendingMachine(balance: Money(value: 0),
                                    inventory: inventory,
                                    history: History())
=======
let products = ProductFactory.create(quantity: 10)

let inventory = Inventory(products: products)

var vendingMachine = VendingMachine(
    balance: Money(value: 0),
    inventory: inventory,
    history: History())
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1

var mode: Authority
var inputView: InputView
var inputString = ""

while vendingMachine.isOnSale {
<<<<<<< HEAD
    let selectInputView = InputViewFactory.create(.none)
    let authorityIndex = Int(selectInputView.fetchInput())
    let authority = Authority(index: authorityIndex)
    
    guard
        authority != .none
        else { continue }
=======
    
    inputView = InputViewFactory.create(.none)
    inputView.showMenu()
    inputString = inputView.fetchInput()
    mode = Authority(input: inputString)
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
    
    vendingMachine.handleProductStatistic(OutputView.showStatistic)
    vendingMachine.handleMoney(OutputView.showBalance)
    
<<<<<<< HEAD
    let inputView = InputViewFactory.create(authority)
    let requestString = inputView.fetchInput()
    
    do {
        let request = try RequestFactory.create(authority: authority,
                                                input: requestString)
=======
    inputView = InputViewFactory.create(mode)
    inputView.showMenu()
    inputString = inputView.fetchInput()
    
    do {
        let request = try RequestFactory.create(authority: mode, input: inputString)
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
        let order = StateHandleableFactory.create(request)
        vendingMachine.setStrategy(order)
        try vendingMachine.execute()
    } catch {
        let handler = ErrorHandler(error: error)
        handler.handle(logic: OutputView.showError)
    }
}
