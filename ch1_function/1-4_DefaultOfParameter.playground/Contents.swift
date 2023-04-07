import UIKit

/*
 - That is, if no 'parameters' are passed, default values ​​are used. Functions with default parameter values ​​can be used as if the function was defined as overloaded
 */

func sayHello(_ name:String, times:Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello("Buzz")) //No value for "repeatCount"
print(sayHello("Buzz", times:7))


/*
 explanation of '0..<times'
 
 '..<' represents a half-open range, which does not include the end value. For example, in the expression '0..<times', '0' is the starting value of the range, and 'times' is the end value. This range includes integers from '0' up to, but not including, 'times'.
 
 - '..<' => 0 ~ (times-1)

 '...' represents a closed range, which includes the end value. For example, in the expression '0...times', '0' is the starting value of the range, and 'times' is the end value. This range includes integers from '0' up to and including 'times'.
 
 - '...times' => 0 ~ times
 
 '_'이 두 개 사용되는 것은 Swift의 범위 연산자(Range Operator)인 '..<'를 나타냅니다.

 '..<'는 범위가 열린 범위(즉, 끝값을 포함하지 않음)을 나타내는 연산자입니다. 예를 들어, '0..<times'에서 '0'은 범위의 시작값이고, 'times'는 범위의 끝값이 됩니다. 이 범위는 '0'부터 'times-1'까지의 정수 값을 포함하게 됩니다.

 반면에 '...'는 범위가 닫힌 범위(즉, 끝값을 포함)를 나타내는 연산자입니다. 따라서 '0...times'와 같이 '...'을 사용하면 '0'부터 'times'까지의 정수 값을 포함하게 됩니다.

 이와 같이 Swift에서는 두 개의 연산자 '..<'와 '...'을 사용하여 범위를 나타내는데, 'for-in' 반복문에서는 주로 '..<'를 사용하여 반복 범위를 설정합니다.
 
 */

/*
 In Swift, '' is an underscore used as a placeholder for a value that is not needed or ignored. In the context of a 'for-in' loop, '' is used when the current value of the loop is not needed.

 For example, in the expression 'for _ in 0..<times', '' is used as a placeholder for the current value of the loop. The purpose of this loop is to repeat the output of 'Hello (name)!' based on the value of the 'times' parameter, and the current value of the loop is not needed for this operation. By using '', we indicate that we do not need a reference to the current value, and the loop executes without using it.

 Using '_' as a placeholder for an ignored value can be useful when we do not need a reference to the current value, such as when we want to ignore the value of a variable or constant, or when we do not want to specify a name for a function parameter, among other use cases.
 
 ''는 Swift에서 무시할 값(underscore)을 나타내는 식별자(identifier)입니다. 'for-in' 반복문에서 ''는 현재 값에 대한 참조가 필요 없을 때 사용됩니다.

 예를 들어, 'for _ in 0..<times'에서 ''는 현재 값에 대한 참조가 필요 없는 경우에 사용됩니다. 반복 횟수를 지정하는 'times' 매개변수에 따라 'Hello (name)!'을 반복 출력하는 것이 목적이기 때문에, 현재 값에 대한 참조가 필요하지 않습니다. 이런 경우에 ''를 사용하여 현재 값에 대한 식별자를 무시하고, 반복을 실행합니다.

 Swift에서는 '_'를 통해 무시할 값으로 사용할 수 있는데, 이는 현재 값에 대한 참조가 필요 없거나 사용하지 않을 때 유용하게 사용될 수 있습니다. 예를 들어, 변수나 상수의 값을 무시하고자 할 때, 함수의 매개변수 이름을 지정하지 않고자 할 때 등에 사용될 수 있습니다.
 */
