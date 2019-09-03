//
//  StorableFactory.swift
//  VendingMachine
//
//  Created by 이동영 on 29/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct ProductFactory {
    
    static func create(categories: [Category] = Category.allCases, quantity: Int) -> [Product] {
        return categories
            .map { [Product](repeating: $0.instance, count: quantity) }
            .reduce([Product]()) { $0 + $1.map { $0 } }
    }
}

enum Category: Int, CustomStringConvertible, CaseIterable {
    case strawberryMilk = 0
    case chocolateMilk
    case cola
    case energyDrink
    case americano
    case cafeLatte
    
    var instance: Beverage {
        switch self {
        case .strawberryMilk:
            return StrawberryMilk()
        case .chocolateMilk:
            return ChocolateMilk()
        case .cola:
            return Cola()
        case .energyDrink:
            return EnergyDrink()
        case .americano:
            return Americano()
        case .cafeLatte:
            return CafeLatte()
        }
    }
    
    var description: String {
        switch self {
        case .strawberryMilk:
            return "딸기우유"
        case .chocolateMilk:
            return "초코우유"
        case .cola:
            return "콜라"
        case .energyDrink:
            return "에너지드링크"
        case .americano:
            return "아메리카노"
        case .cafeLatte:
            return "카페라떼"
        }
    }
}
