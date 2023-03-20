import UIKit

/*
 함수 => 일을 할 수 있는 명령어의 묶음
 */


func addNum(_ a: Int, _ b: Int) -> Int{ // addNum:
    var c = a + b                       // 임시공간 생성
                                        // a라는 상수에 값을 저장.
                                        // b라는 상수에 값을 저장.
                                        // c 변수 공간 생성.
                                        // c값을 임시공간에 저장한다.
                                        // a+b를 더한 임시 값을 가짐
    
    return c                            // 임시 공간의 값을 리턴한다.
}


                                        //Main:
var x = addNum(10, 10)                  //x 변수 공간을 만듬
                                        //10,10를 이용하여 addNum함수를 실행
                                        //결과값을 x에 저장
var y = addNum(8, 2)                  //y 변수 공간을 만듬
                                        //8,2를 이용하여 addNum함수를 실행
                                        //결과값을 x에 저장
