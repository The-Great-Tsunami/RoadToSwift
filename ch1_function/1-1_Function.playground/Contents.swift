import UIKit

/*
 - The keyword that defines a function is 'func'. After specifying the function name, the parameter uses 'parentheses ()'
  - Before specifying the return type, use '->' to specify which type will be returned.
 */

func Pokemon(name: String) -> String{
    return "Hello \(name)!!!"
}

let helloPika = Pokemon(name: "Pikachu")
print(helloPika)


func introduce(name: String) -> String{
    "Hello I'm \(name)" //Same as return "Hello I'm \(name)"
}

let introduceGgobogi: String = introduce(name: "Ggobogi") // Prameter(매개변수)-> name, Argument(전달인수) -> "Ggobogi
print(introduceGgobogi)

/*
 In swift, if the code inside a function is a single line expression and the type of the expression matches the return type of the function, the result value of the expression becomes the return value of the function even if the return keyword is omitted.
 */

