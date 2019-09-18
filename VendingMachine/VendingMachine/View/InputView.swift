//
//  InputView.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol InputView {
<<<<<<< HEAD
    func fetchInput() -> String
=======
    func showMenu()
    func fetchInput() -> String
}
extension InputView {
    func fetchInput() -> String {
        return readLine() ?? ""
    }
>>>>>>> 9498e0995fdfb37413a4108d718b159557062cc1
}
