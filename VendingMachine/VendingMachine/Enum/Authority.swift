//
//  Authority.swift
//  VendingMachine
//
//  Created by 이동영 on 02/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum Authority: Int {
    case admin = 1
    case user
    case none
    
    init(input: String) {
        let modeIndex = Int(input) ?? -1
        self = Authority.init(rawValue: modeIndex) ?? .none
    }
    
}
