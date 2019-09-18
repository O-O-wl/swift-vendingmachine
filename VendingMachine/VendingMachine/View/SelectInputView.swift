//
//  SelectInputView.swift
//  VendingMachine
//
//  Created by 이동영 on 03/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct SelectInputView: InputView {
    enum Menu: Int, CustomStringConvertible, CaseIterable {
        case admin = 1
        case user
        
        var description: String {
            switch self {
            case .admin:
                return "\(rawValue). 관리자 모드 😎"
            case .user:
                return "\(rawValue). 사용자 모드 😛"
            }
        }
    }
    
<<<<<<< HEAD
    func fetchInput() -> String {
        Menu.allCases.forEach { print($0) }
        return readLine() ?? ""
=======
    func showMenu() {
        Menu.allCases.forEach { print($0) }
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
    }
    
}
