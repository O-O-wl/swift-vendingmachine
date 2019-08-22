//
//  Beverage.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol Product: class {
    var productName: String { get }
    var productPrice: Int { get }
    var isHot: Bool { get }
    var isDue: Bool { get }
}

class Beverage {
    // MARK: - Properties
    static let standardTemperature = 20
    static let storeDuration: TimeInterval = 7
    
    private let brand: String
    private let capacity: Int
    private let price: Int
    private let name: String
    private let productDate: Date
    private var exeirationDate: Date {
        return productDate + Beverage.storeDuration
    }
    private let temperature: Int
    
    // MARK: - Methods
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "음료",
         productDate: Date = Date(),
         temperature: Int = standardTemperature) {
        self.brand = brand
        self.capacity = capacity
        self.price = price
        self.name = name
        self.productDate = productDate
        self.temperature = temperature
    }
}
// MARK: - + CustomStringConvertible
extension Beverage: CustomStringConvertible {
    var description: String {
        return "\(brand), \(capacity)ml, \(price)원, \(name), \(productDate.text)"
    }
}
// MARK: - + CustomStringConvertible
extension Beverage: Product {
    var productName: String {
        return self.name
    }
    
    var productPrice: Int {
        return self.price
    }
    
    var isHot: Bool {
        return temperature > Beverage.standardTemperature
    }
    
    var isDue: Bool {
        let nowDate = Date()
        return exeirationDate < nowDate
    }
}
