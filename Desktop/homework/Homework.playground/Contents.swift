import UIKit

var InputNamberOne:Int = 5
var InputNumberTwo:Int = 4

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



