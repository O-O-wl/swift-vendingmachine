## 음료 자판기 

---

<br>

## STEP2

###  음료 클래스 구조

<img width="972" alt="스크린샷 2019-08-14 오전 5 14 25" src="https://user-images.githubusercontent.com/39197978/62974092-643fa880-be52-11e9-896c-d62d03785b15.png">



---

<br>

<br>

<br>

## STEP3



#### 주요 Protocol

- **`Product`**

  ```swift
  protocol Product: class {
      var productName: String { get }
      var productPrice: Money { get }
      var isHot: Bool { get }
      var isDue: Bool { get }
  }
  extension Product {
      var productDescription: String {
          return "\(productName) \(productPrice)"
      }
  }
  ```

  - 기존의 Beverage 데이터중에 자판기가 핸들링해야 하는 데이터가 존재한다.
  - 하지만 그렇다고 기존에 있던 `Beverage`의 데이터의 접근제한자를 수정하기 보다는 타입을 확장(**OCP**)해서 사용하는 게 좋다고 판단하여 공개할 변수들만 사용할 수 있게 하였고, 그걸 `Beverage`가 결정할 수 있게 하였다.

  - `VendingMachine` 은 변화에 덜 취약한 추상적인 Product에 의존하게 하여 **DIP**도 최대한 지키게 하려 하였다.

    <br>

- **`MoneyHandleable , TupleListHandable`**

- ```swift
  protocol MoneyHandleable {
      func handleMoney(_ handler: (Money) -> Void)
  }
  
  protocol TupleListHandleable {
      associatedtype Key
      associatedtype Value
      func handleTupleList(_ handler: ([(Key, Value)]) -> Void)
  }
  ```

  - 내부 데이터를 핸들링 할 수 있는 로직(클로저)를 주입 할 수 있는 인터페이스를 제공하는 프로토콜로 하여 데이터를 가져오는 방식이 아닌 데이터를 처리할 로직을 주입할 수 있게 만들어준다.

  - 데이터를 가져오는 건 OOP에서 권장되지 않을 뿐 아니라, 데이터를 전달하면, 데이터의 양이 클 경우 복사에 따른 비용이 발생하기때문에 **객체 내부에서 자신의 데이터를 직접 처리할 수 있게 일을 시킬 수 있다.** 

    <br>

- **`Statehandable`**

  ```swift
  
  protocol StateHandleable {
      mutating func handle(_ before: State) -> Result<State, Error>
      func complete()
  }
  ```

  - 스트래티지 로서의 역할을 하는 프로토콜이다.

  - 요구사항 분석에서 사용자의 입력에 따른 명령에 따른 **VendingMachine의 행동(메서드)** 계속적으로 추가될 수 있음을 추측했다.

  - 잔돈 : `Balence` / 재고: `Inventory` 를 핸들링하는 행동이 추가될 것이라고 예상했고, 그 행동군을 캡슐화하여 외부에서 주입 할 수 있게 하는 방법을 고려해보았다. 

    <br>

    <br>

    

#### 익스텐션

```swift
//
//  Extensions.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

func print<T: Beverage>(beverage: T) {
    print("\(type(of: beverage)) - \(beverage.description)")
}
// MARK: - Date Extension
extension Date {
    var text: String {
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "yyyyMMdd"
        return dateFormmater.string(from: self)
    }
}
// MARK: - Int Extesion
extension Int {
    var dayDuration: TimeInterval {
        let secOfDay = 86400
        return TimeInterval(self * secOfDay)
    }
}
// MARK: - Array Extension
extension Array where Element == String {
    var dictionary: [String: Int] {
        var statistic = [String: Int]()
        self.forEach { statistic[$0] = (statistic[$0] ?? 0) + 1 }
        return statistic
    }
}
// MARK: - Dictionary Extension
extension Dictionary where Key == String, Value == Int {
    var list: [(String, Int)] {
        return self.sorted(by: <)
    }
}
```

- **처음에 해당 메소드를 사용해야할 객체내부에 정의했으나, 객체의 전체적인 응집도가 떨어졌다.** 
- 그래서 익스텐션을 고려해봤다. 



---

