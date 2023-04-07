import UIKit

/*
 When the number of values that may be passed as arguments to a function is uncertain, you can use a variadic parameter.
 A variadic parameter can accept zero or more values (including zero), and the values passed as arguments to the variadic parameter can be used like an array.
 Each function can have only one variadic parameter.
 
 매개변수로 몇 개의 값이 들어올지 모를 떄는 가변 매개변수를 사용할 수 있다.
 가변 매개변수는 0개 이상(0개 포함)의 값을 받아올 수 있으며, 가변 매개변수로 들어온 인자 값은 배열처럼 사용할 수 있다,
 함수마다 가변 매개변수는 하나만 가질 수 있다.
 */

func gogoPokemon(trainer: String, pokemon:String...) -> String{
    var result: String = ""
    
    for name in pokemon{
        result += "\(name)" + " "
    }
    
    result += "is" + " " + trainer + "'s pokemon!"
    return result
}

print(gogoPokemon(trainer: "Hitoshi", pokemon: "pikachu", "pairi", "ggobogi"))


/*
 1. 함수 호출 시, 전달인자의 값을 복사
 2. 해당 전달인자의 값을 변경하면 1에서 복사한 내용을 함수 내부에서 변경
 3. 함수를 반호나하는 시점에서 2에서 변경된 값을 매개변수에 할당
 */
