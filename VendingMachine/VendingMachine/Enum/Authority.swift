//
//  Authority.swift
//  VendingMachine
//
//  Created by 이동영 on 02/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum Authority: Int, CustomStringConvertible, CaseIterable {
    case admin = 1
    case user
    
    var description: String {
        switch self {
        case .admin:
            return "관리자 모드"
        case .user:
            return "사용자 모드"
        }
    }
}
