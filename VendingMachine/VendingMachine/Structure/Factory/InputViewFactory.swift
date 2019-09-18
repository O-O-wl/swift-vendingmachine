//
//  InputViewFactory.swift
//  VendingMachine
//
//  Created by 이동영 on 03/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputViewFactory {
<<<<<<< HEAD
    static func create(_ authority: Authority = .none) -> InputView {
        switch authority {
=======
    static func create(_ mode: Authority = .none) -> InputView {
        switch mode {
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
        case .admin:
            return AdminInputView()
        case .user:
            return UserInputView()
        case .none:
            return SelectInputView()
        }
    }
}
