//
//  VendingMachineHandleable.swift
//  VendingMachine
//
//  Created by 이동영 on 21/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation


protocol StateHandleable {
    func handle(_ before: State) -> State
}
