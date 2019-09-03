//
//  InputViewFactory.swift
//  VendingMachine
//
//  Created by 이동영 on 03/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputViewFactory {
    static func create(_ mode: Authority = .none) -> InputView {
        switch mode {
        case .admin:
            return AdminInputView()
        case .user:
            return UserInputView()
        case .none:
            return SelectInputView()
        }
    }
}
