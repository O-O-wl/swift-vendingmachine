//
//  Inventory.swift
//  VendingMachine
//
//  Created by 이동영 on 17/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Inventory {
    private var stocks: [Product]
    
    init(products: [Product]) {
        self.stocks = products
    }
    
    func statistics() -> [String: Int] {
        var statistic = [String: Int]()
        stocks.forEach {
            statistic[$0.productName] = (statistic[$0.productName] ?? 0) + 1
        }
        return statistic
    }
    
    mutating func addStock(_ product: Product) {
        stocks.append(product)
    }
    
    func filter(option: Option) -> [Product] {
        return stocks.filter { option.filter($0) }
    }
    
    mutating func takeOut(_ product: Product) -> Product? {
        guard
            let index = stocks.firstIndex(where: { product.productName == $0.productName })
            else { return nil }
        return stocks.remove(at: index)
    } 
}
// MARK: + Nested Enum 'Option'
extension Inventory {
    enum Option {
        case all
        case available(balence: Money)
        case hot
        case due
        
        var filter: (Product) -> Bool {
            switch self {
            case .all:
                return { _ in true }
            case .available(let balence):
                return { $0.productPrice < balence }
            case .hot:
                return { $0.isHot }
            case .due:
                return { $0.isDue }
                
            }
        }
    }
}
