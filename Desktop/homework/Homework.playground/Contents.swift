import UIKit

let InputNamberOne:Int = 5
let InputNumberTwo:Int = 4

var Summary = InputNamberOne + InputNumberTwo
var Different = InputNamberOne - InputNumberTwo
var MUltiply = InputNamberOne * InputNumberTwo
var Divide:Double = Double(InputNamberOne) / Double(InputNumberTwo)



let InputCurrency:Int = 5346
var Bank1000:Int = InputCurrency/1000
var Bank500:Int = (InputCurrency%1000)/500
var Bank100:Int = ((InputCurrency%1000)%500)/100
var Bank50:Int = (((InputCurrency%1000)%500)%100)/50
var Bank20:Int = ((((InputCurrency%1000)%500)%100)%50)/20
var Coin10:Int = (((((InputCurrency%1000)%500)%100)%50)%20)/10
var Coin5:Int = ((((((InputCurrency%1000)%500)%100)%50)%20)%10)/50
var Coin2:Int = (((((((InputCurrency%1000)%500)%100)%50)%20)%10)%5)/2
var Coin1:Int = ((((((((InputCurrency%1000)%500)%100)%50)%20)%10)%5)%2)/1


var InputValue:Int = 5
if InputValue%2 == 0{
    InputValue -= 1
    if InputValue % 3 == 0 && InputValue % 5 == 0{
        print("This value can be divisible by 3 and 5")
    }
    else{
        print("This value can  not be divisible by 3 and 5")
    }
}
else{
    InputValue += 1
    if InputValue % 2 == 0 || InputValue % 6 == 0 {
        print("This value can be divisible by 2 or 6")
    }
    else{
        print("This value can be divisible by 2 or 6")
    }
}

var mainNumber = 1
var sum = 0
while mainNumber <= 12 {
    for count in 1...12{
        sum = mainNumber * count
        print("\(mainNumber) * \(count) = \(sum)")
    }
    mainNumber += 1
}




 



   


