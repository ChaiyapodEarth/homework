//
//  CalculatorViewController.swift
//  Calculator_V1
//
//  Created by Kittinun Chobtham on 16/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var result: UILabel!

    var display = "0"
    var defaultValue:Float = 0
    
    var fisrtValue:Float = 0
    var secondValue:Float = 0
    
    var operating:String = ""
    
    var performMath:Bool = false
    var performCalculate:Bool = false
    
    @IBOutlet weak var divideButtonOutlet: UIButton!
    @IBOutlet weak var multiplyButtonOutlet: UIButton!
    @IBOutlet weak var plusButtonOutlet: UIButton!
    @IBOutlet weak var minusButtonOutlet: UIButton!
    @IBOutlet weak var clearButtonOutlet: UIButton!
    
    @IBAction func clearButton(_ sender: Any) {
        clearColorButton()
        clearButtonOutlet.setTitle("AC", for: .normal)
        fisrtValue = 0
        secondValue = 0
        defaultValue = 0
        setupDisplay(value: "0")
        result.text = "\(display)"
        performMath = false
        performCalculate = false
    }
    
    @IBAction func divideButton(_ sender: Any) {
        updatrValue()
        clearColorButton()
        setColorBackgroudAndText(button: divideButtonOutlet)
        checkPerformMath()
        display = "0"
        operating = "/"
        performCalculate = true
    }
    
    @IBAction func percenButton(_ sender: Any) {
        clearColorButton()
        let floatDisplay = Float(display)
        let Ans:Float = floatDisplay! / 100
        setupDisplay(value: "\(Ans)")
        result.text = "\(display)"
    }
    @IBAction func multiplyButton(_ sender: Any) {
        updatrValue()
        clearColorButton()
        setColorBackgroudAndText(button: multiplyButtonOutlet)
        checkPerformMath()
        setupDisplay(value: "0")
        operating = "*"
        performCalculate = true
    }
    @IBAction func PlusButton(_ sender: Any) {
        updatrValue()
        clearColorButton()
        setColorBackgroudAndText(button: plusButtonOutlet)
        checkPerformMath()
        setupDisplay(value: "0")
        operating = "+"
        performCalculate = true
    }
    @IBAction func minusButton(_ sender: Any) {
        updatrValue()
        clearColorButton()
        setColorBackgroudAndText(button: minusButtonOutlet)
        checkPerformMath()
        setupDisplay(value: "0")
        operating = "-"
        performCalculate = true
    }
    
    @IBAction func changeVlaurButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        var newValue = Float(display)
        newValue! -= newValue! * 2
        setupDisplay(value: "\(newValue)")
        defaultValue = newValue!
        result.text = "\(newValue!.clean)"
        clearColorButton()
    }
    @IBAction func calculateTotal(_ sender: Any) {
        clearColorButton()
        performCalculate = false
        calculateValue()
    }
    @IBAction func zeroButton(_ sender: Any){
        checkDisplayZero(value: "0")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func dotButton(_ sender: Any) {
        checkHaveDotInDisplay()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func oneButton(_ sender: Any) {
        checkDisplayZero(value: "1")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func twoButton(_ sender: Any) {
        checkDisplayZero(value: "2")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func treeButton(_ sender: Any) {
        checkDisplayZero(value: "3")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func fourButton(_ sender: Any) {
        checkDisplayZero(value: "4")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func fiveButton(_ sender: Any) {
        checkDisplayZero(value: "5")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func sixButton(_ sender: Any) {
        checkDisplayZero(value: "6")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func sevenButton(_ sender: Any) {
        checkDisplayZero(value: "7")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func eightButton(_ sender: Any) {
        checkDisplayZero(value: "8")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        checkDisplayZero(value: "9")
        checkPerformMathIsTrue()
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    
    func checkDisplayZero(value:String) {
        if display == "0" {
            display = "\(value)"
        }else {
            display += "\(value)"
        }
    }
    
    func checkPerformMathIsTrue() {
        if performMath == true{
            defaultValue = Float(display)!
        }
    }
    
    func checkHaveDotInDisplay() {
        if isContainDot(number: display){
            return
        }
        else{
            display += "."
        }
    }
    
    
    func setupDisplay(value:String) {
        display = value
    }
    
    func checkPerformMath() {
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
    }
    
    func setColorBackgroudAndText(button:UIButton)  {
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.systemOrange, for: .normal)
    }
    
    func  calculateAdd(input:Int,Input2:Int) -> Int{
        return input + Input2
    }
    
    func clearColorButton()  {
        divideButtonOutlet.backgroundColor = UIColor.systemOrange
        multiplyButtonOutlet.backgroundColor = UIColor.systemOrange
        minusButtonOutlet.backgroundColor = UIColor.systemOrange
        plusButtonOutlet.backgroundColor = UIColor.systemOrange
        
        divideButtonOutlet.setTitleColor(UIColor.white, for: .normal)
        multiplyButtonOutlet.setTitleColor(UIColor.white, for: .normal)
        minusButtonOutlet.setTitleColor(UIColor.white, for: .normal)
        plusButtonOutlet.setTitleColor(UIColor.white, for: .normal)
    }
    
    func isInt(number:Float) -> Bool {
        return number.truncatingRemainder(dividingBy: 1.0) == 0.0
    }
    
    func isContainDot(number:String) -> Bool {
        return number.contains(".")
    }
    
    func calculateForUpdateValue() {
        let secondValueFloat = Float(display)
        secondValue = secondValueFloat!
        switch operating {
        case "+":
            let total = fisrtValue + secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "-":
            let total = fisrtValue - secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "*":
            let total = fisrtValue * secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "/":
            let total = fisrtValue / secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
            
        default:
            result.text = "error"
        }
    }
    
    func  updatrValue() {
        if performCalculate == true{
            calculateForUpdateValue()
        }
        else{
            result.text = "0"
            return
        }
    }
    
    func calculateValue() {
        let secondValueFloat = Float(display)
        secondValue = secondValueFloat!
        switch operating {
        case "+":
            let total = fisrtValue + secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "-":
            let total = fisrtValue - secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "*":
            let total = fisrtValue * secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        case "/":
            let total = fisrtValue / secondValue
            if isInt(number: total) {
                let intNumber = Int(total)
                display = String(intNumber)
                result.text = "\(intNumber)"
                defaultValue = Float(intNumber)
            }else{
                display = String(total)
                result.text = "\(total)"
                defaultValue = total
            }
            performMath = true
        default:
            result.text = "error"
        }
    }
    
}
