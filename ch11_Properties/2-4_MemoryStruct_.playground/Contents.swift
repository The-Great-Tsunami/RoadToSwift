import UIKit

class Pokemon{
    var name: String //데이터 영역
    var skill: String //데이터 영역
    
    init(name: String, skill: String){
        self.name = name
        self.skill = skill
    }
    func aww() { //데이터 영역
        print("\(name)!!!!")
    }
    
    func attack() { //데이터 영역
        print("\(skill)!!!")
    }
}


var pokemon1 = Pokemon(name: "pikachu", skill: "ironTale") //주소는 스택 영역에 저장 값은 힙 영역에 저장

var pokemon2 = Pokemon(name: "Ggobogi", skill: "hydroPump")


pokemon1.aww()
pokemon1.attack()
