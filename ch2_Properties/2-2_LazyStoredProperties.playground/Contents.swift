import UIKit

/*
Lazy Stored Properties
 - 지연 저장 속성 -> 초기화를 지연시키는 것
 - 인스턴스가 초기화되는 시점에 특정 저장 속성이 값을 갖고 초기화되는 것이 X -> (메모리에 공간과 값을 갖지 않음)
 - 해당 속성에 접근하는 순간에 (특정 저장 속성만 개별적으로) 초기화된다.
 - 따라서 let을 통한 상수 선언은 불가, var로만 선언 가능 => lazy var(O) lazy let(X)
 - 지연 저장속성은 항상 디폴트 값을 가져야 함.
  */

struct Pokemon{
    var name: String
    lazy var skill: String = "ironTale" //선언 시점에 디폴트 값을 반드시 저장해야함.
    
    init(name: String){
        self.name = name
    }
    
    func gogo() {
        print("\(name)!!")
    }
}
var pokemon1 = Pokemon(name: "Pairi")
pokemon1.skill = "FireBall"
pokemon1.gogo()

/*
 지연 저장 속성을 필요로 하는 시점
 
 -1
 _ 메모리 공간을 많이 차지하는 이미지 등을 저장할 때는 반드시 메모리에 다 올릴 필요가 없음 -> 지연 저장속성 활용 => 메모리 낭비X
 -2
 _ 다른 속성들을 이용해야하는 경우 초기화 시점에 다른 속성들이 동시에 메모리 공간에 저장
 _ 어떤 한 가지 속성이 다른 속성에 접근할 수 없음 -> 지연 저장속성 이용 시 지연으로 저장된 속성은 먼저 초기화된 속성에 접근O
 */

class ViEw{
    var A: Int
    
    // -1. 메모리를 많이 차지하는 경우
    
    lazy var view = UIImageView() //객체 생성 형태
    
    // -2. 다른 속성을 이용해야하는 경우(다른 저장 속성에 의존해야하는 경우) -> A가 없으면 B도 있을 수 없음
    
    lazy var B: Int = {
        return A * 10
    }()
    
    init(number: Int){
        self.A = number
    }
}

var ViEwFirst = ViEw(number: 7)
