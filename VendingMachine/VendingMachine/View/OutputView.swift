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
    
    static let showStatistic: ([ProductStatistic]) -> Void = {
        let sentence = $0.reduce("🥛🥤☕️ 다음과 같은 음료가 있습니다. 🥛🥤☕️\n") {
            return "\($0) \($1.index)) \($1.productDescription)\t (\($1.productQuantity)개)\n"
        }
        print(sentence)
    }
    
    static let showInsertMoney: (Money) -> Void = {
        print("\($0)을 추가하셨습니다. ⬅️ 💴💶💷")
    }
    
    static let showPurchase: (String, Money) -> Void = {
        print("\($0)을 성공적으로 구매했습니다. \($1)을 차감합니다.💸\n")
    }
    
    static let showCategory: ([Category]) -> Void = {
        let sentence = $0.reduce("🧾 추가할 음료수를 선택해주세요. \n") { "\($0) \($1.rawValue)) \($1)\n" }
        print(sentence)
    }
    
    static let showInStock: (String) -> Void = {
        print("\($0)를 재고에 추가하셨습니다. ⬅️ 🥛🥤☕️ ")
    }
    
    static let showDeStock: (String) -> Void = {
        print("\($0)을 재고를 정리하였습니다. ⛔️ 🥛🥤☕️")
    }
    
    static let showError: (Error) -> Void = {
        print("""
            ===================⚠️ Error ⚠️===================
            \($0.localizedDescription)
            =================================================
            """)
    }
}
