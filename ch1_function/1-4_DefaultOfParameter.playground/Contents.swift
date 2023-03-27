import UIKit

/*
 - That is, if no 'parameters' are passed, default values ​​are used. Functions with default parameter values ​​can be used as if the function was defined as overloaded
 */

func sayHello(to name:String, repeatCount times:Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello(to: "buzz")) //No value for "repeatCount"
print(sayHello(to: "buzz", repeatCount: 7))
