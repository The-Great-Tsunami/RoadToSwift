import UIKit

// Defining and Using Functions Without Parameters

func Pokemon() -> String{
    return "hello Pokemon"
}
print(Pokemon())

/* - When defining a function that requires multiple parameters, separate the parameters with commas.
   - Note that when calling a function, the parameter name is given, followed by a colon, and then the argument is sent.
   - The name given to the parameter when 'calling' is called the 'parameter name'
 */

func Pokemons(name: String, ownerName: String) -> String{
    return "\(name) is owned by \(ownerName)"
}

var newPokemons = Pokemons(name: "Pairi", ownerName: "Hiroshi")

print(newPokemons)
