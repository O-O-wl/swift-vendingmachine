//
//  OutputView.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    
    static let showBalance: (Money) -> Void = {
        print("현재 투입한 금액은 \($0)입니다.💵💰 ")
    }
    
    static let showStatistic: ([(key: String, value: Int)]) -> Void = {
        var index = 0
        let sentence = $0.reduce("🥛🥤☕️ 다음과 같은 음료가 있습니다. 🥛🥤☕️\n") {
            index += 1
            return "\($0) \(index)) \($1.key)\t (\($1.value)개)\n"
        }
        print(sentence)
    }
    
    static let showPurchase: (String, Money) -> Void = {
        print("\n\($0)를 구매하셨습니다. \($1)을 차감합니다.💸\n")
    }
    
    static let showInsertMoney: (Money) -> Void = {
        print("\($0)를 추가하셨습니다. ⬅️ 💴💶💷")
    }
    
}
