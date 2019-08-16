//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation


protocol Vendingable {
    //자판기 금액을 원하는 금액만큼 올리는 메소드
    mutating func input(balence: Money)
    //특정 상품 인스턴스를 넘겨서 재고를 추가하는 메소드
    mutating func addInventory(_: Product)
    //현재 금액으로 구매가능한 음료수 목록을 리턴하는 메소드
    func showPurchasableList() -> [Product]
    //음료수를 구매하는 메소드
    func purchase(product: Product) -> Product?
    //잔액을 확인하는 메소드
    func showBanlence()
    //전체 상품 재고를 (사전으로 표현하는) 종류별로 리턴하는 메소드
    func showStock() -> [String: Int]
    //유통기한이 지난 재고만 리턴하는 메소드
    //따뜻한 음료만 리턴하는 메소드
    //시작이후 구매 상품 이력을 배열로 리턴하는 메소드
    
}

struct VendingMachine {
    
}
