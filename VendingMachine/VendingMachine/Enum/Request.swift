//
//  Input.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum Request {
    case insert(amount: Int)
    case purchase(index: Int)
    case inStock(product: Product)
    case deStock(index: Int)
}
