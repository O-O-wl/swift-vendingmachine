//
//  Money.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Money {
    enum Unit: CustomStringConvertible {
        var description: String {
            switch self {
            case .won:
                return "원"
            case .dollar:
                return "$"
            case .euro:
                return "€"
            }
        }
        
        case won
        case dollar
        case euro
    }
    let unit: Unit = .won
    var value: Int
    
}
// MARK: - + CustomStringConvertible
extension Money: CustomStringConvertible {
    var description: String {
        let numberFormmater = NumberFormatter()
        numberFormmater.numberStyle = .decimal
        let price = numberFormmater.string(from: NSNumber(value: value)) ?? "\(value)"
        return price + unit.description
    }
    
}
// MARK: - + Operation overloading
extension Money: Equatable {

    static func + ( lhs: Money, rhs: Money) -> Money {
        return Money(value: lhs.value + rhs.value)
    }
    
    static func - ( lhs: Money, rhs: Money) -> Money {
        return Money(value: lhs.value - rhs.value)
    }a
}
