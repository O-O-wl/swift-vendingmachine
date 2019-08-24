//
//  Handleable.swift
//  VendingMachine
//
//  Created by 이동영 on 24/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol MoneyHandleable {
    func handleMoney(_ handler: (Money) -> Void)
}

protocol TupleListHandleable {
    associatedtype Key
    associatedtype Value
    func handleTupleList(_ handler: ([(Key, Value)]) -> Void)
}

