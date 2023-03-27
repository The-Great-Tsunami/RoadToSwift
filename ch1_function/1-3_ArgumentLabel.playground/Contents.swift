import UIKit

/*
 In swift, 'Argumemt label' can be specified. Argument labels can be used to clarify the role of a parameter outside a function.
 - To use 'argument label', put a space in front of the parameter name in the function definition and designate 'argument label'.
 */

func Pokemons(Pokemon name:String, owner names:String) -> String{
    return "\(name) - \(names)"
}

var pokemon1 = Pokemons(Pokemon: "pikachu", owner: "hiroshi")

print(pokemon1)

// Also, you can implement a function that does not use argument labels through wildcard identifiers.

func sayHello(_ name:String, _ times:Int) -> String {
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name)!" + " "
    }
    
    return result
}

var hello1 = sayHello("buzz", 2)

print(hello1)

/*
 Changing the 'argument label' changes the name of the function itself. Therefore, even if only the argument label is written differently, it can operate as a function overload definition.
 */

func sayHello(to name:String, repeatCount times:Int) -> String {
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello("buzz", 2))
print(sayHello(to: "buzz", repeatCount: 2))
