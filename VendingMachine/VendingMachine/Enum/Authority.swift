//
//  Authority.swift
//  VendingMachine
//
//  Created by 이동영 on 02/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum Authority: Int {
<<<<<<< HEAD
    case none
    case admin = 1
    case user
    
    init(index: Int?) {
        guard
            let index = index
            else {
                self = .none
                return
        }
        self = Authority.init(rawValue: index) ?? .none
=======
    case admin = 1
    case user
    case none
    
    init(input: String) {
        let modeIndex = Int(input) ?? -1
        self = Authority.init(rawValue: modeIndex) ?? .none
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
    }
    
}
