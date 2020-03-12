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


var NumofDivide = 2
var PrimeNumber = true
var maxNumber = 100
var  i = 1
var sumOfPrime = ""
while i <= maxNumber {
    PrimeNumber = true
    NumofDivide = 2
    while NumofDivide < (i-1) {
        if i % NumofDivide == 0{
            PrimeNumber = false
            break
        }
        NumofDivide += 1
    }
    if(PrimeNumber)
    {
        sumOfPrime += "\(i) "
    }
    i += 1
}
print(sumOfPrime)




var count1 = 0
var star1 = ""
while count1 < 5 {
    print(star1)
    star1 += "*"
    count1 += 1

}

var count2 = 1
var star2 = ""
var check = 1
while count2 < 6 {
    star2 = ""
    check = 1
    while check < (6 - count2 + 1) {
        star2 += " "
        check += 1
    }
    while check < 6 {
        star2 += "* "
        check += 1
    }
    print("\(star2)")
    count2 += 1
}

var count3 = 0
var star3 = "   ****"
while count3 < 3 {
    print(star3)
    star3 += ""
    count3 += 1
}

//No finish
//var star4 = ""
//var count4 = 1
//var check2 = 1
//var totalLines4 = 6
//while count4 < 6 {
//    star4 = ""
//    check2 = 1
//    while check2 < (6 - count4 + 1) {
//        star4 += " "
//        check2 += 1
//    }
//    for row in 1...count4 {
//           if  (count4 > 2 && count4 < totalLines4) && (row >= 2 && row < count4) {
//               star4 += "  "
//           }
//            else {
//               star4 += "* "
//           }
//       }
//
//    print(" " + star4)
//    count4 += 1
//
//}

var count5 = 0
var star5 = "   ****"
while count5 < 5 {
    print(star5)
    star5 += "****"
    count5 += 1
}


let Score:Int = 78
switch Score {
    case 0...49:
        print("F")
    case 50...54:
        print("D+")
    case 55...59:
        print("D")
    case 60...64:
        print("C")
    case 65...69:
        print("C+")
    case 70...74:
        print("B")
    case 75...79:
          print("B+")
    case 80...100:
        print("A")
default:
    print("Error , score in't corrected")
}


   


