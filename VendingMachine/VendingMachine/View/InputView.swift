//
//  InputView.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    enum Menu: Int, CustomStringConvertible, CaseIterable {
        case insert = 1
        case purchase
        
        var description: String {
            switch self {
            case .insert:
                return "\(rawValue). 금액추가"
            case .purchase:
                return "\(rawValue). 음료구매"
            }
        }
    }
    
    static func fetchInput() -> String {
        Menu.allCases.forEach { print($0) }
        return readLine() ?? ""
    }
}
