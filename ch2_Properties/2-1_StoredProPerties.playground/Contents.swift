import UIKit

/*
 저장 속성 => 값이 저장되는 일반적인 속성(변수)를 저장속성이라고 함.
 - 구조체와 클래스에서 동일
 - let 또는 car로 선언 가능
 - 저장 속성은 각 속성 자체가 고유한 메모리 공간을 가진다고 봄
 - 초기화 이전에 값을 가지고 있거나, 생성자 매서드를 통해 값을 반드시 초기화 해야함
 */

struct Pokemon{
    var name: String
    var skill: String
    
    init(name: String, skill: String){
        self.name = name
        self.skill = skill
    }
    
    func gogo() {
        print("\(name)! \(skill)!!!")
    }
}

var pokemon1 = Pokemon(name: "pikachu", skill: "ironTale")

pokemon1.name
pokemon1.skill

var pokemon2 = Pokemon(name: "Ggobogi", skill: "hydroPump")

pokemon2.name
pokemon2.skill


//var pokemon3 = Pokemon(name: "Pairi") //-> skill 속성이 초기화되지 않음
//pokemon3.skill
