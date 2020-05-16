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
    
    func changACButton(){
        if display != "0" {
            
        }
    }
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
        display = "0"
        result.text = "\(display)"
        performMath = false
        
    }
    @IBAction func divideButton(_ sender: Any) {
        clearColorButton()
        divideButtonOutlet.backgroundColor = UIColor.white
        divideButtonOutlet.setTitleColor(UIColor.systemOrange, for: .normal)
        
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = "0"
        result.text = "\(display)"
        operating = "/"
    }
    
    @IBAction func modButton(_ sender: Any) {
        clearColorButton()
        let floatDisplay = Float(display)
        let Ans:Float = floatDisplay! / 100
        
        display = "\(Ans)"
        result.text = "\(display)"
    }
    @IBAction func multiplyButton(_ sender: Any) {
        clearColorButton()
        multiplyButtonOutlet.backgroundColor = UIColor.white
        multiplyButtonOutlet.setTitleColor(UIColor.systemOrange, for: .normal)
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
            }
        
        display = "0"
        result.text = "\(display)"
        operating = "*"
    }
    @IBAction func PlusButton(_ sender: Any) {
        clearColorButton()
        plusButtonOutlet.backgroundColor = UIColor.white
        plusButtonOutlet.setTitleColor(UIColor.systemOrange, for: .normal)
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = "0"
        result.text = "\(display)"
        operating = "+"
    }
    @IBAction func minusButton(_ sender: Any) {
        clearColorButton()
        minusButtonOutlet.backgroundColor = UIColor.white
        minusButtonOutlet.setTitleColor(UIColor.systemOrange, for: .normal)
        
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = "0"
        result.text = "\(display)"
        operating = "-"
    }
    @IBAction func changeVlaurButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        var newValue = Float(display)
        newValue! -= newValue! * 2
        display = "\(newValue!)"
        defaultValue = newValue!
        result.text = "\(newValue!.clean)"
        clearColorButton()
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
    
    @IBAction func calculateTotal(_ sender: Any) {
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
//             defaultValue = total
//             display = String(total.clean)
//             result.text = "\(display)"
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
//             defaultValue = total
//             display = String(total)
//             result.text = "\(display)"
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
//            defaultValue = total
//            display = String(total.clean)
//            result.text = "\(display)"
            performMath = true
        default:
            result.text = "error"
        }
    }
    
    
    func isContainDot(number:String) -> Bool {
        return number.contains(".")
    }
    
    @IBAction func zeroButton(_ sender: Any){
        if display == "0" {
            display = "0"
        }else {
            display += "0"
        }
        
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func dotButton(_ sender: Any) {
        if isContainDot(number: display){
            return
        }
        else{
            display += "."
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func oneButton(_ sender: Any) {
        if display == "0" {
            display = "1"
        }else {
            display += "1"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func twoButton(_ sender: Any) {
        if display == "0" {
            display = "2"
        }else {
            display += "2"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func treeButton(_ sender: Any) {
        if display == "0" {
            display = "3"
        }else {
            display += "3"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func fourButton(_ sender: Any) {
        if display == "0" {
            display = "4"
        }else {
            display += "4"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func fiveButton(_ sender: Any) {
        if display == "0" {
            display = "5"
        }else {
            display += "5"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func sixButton(_ sender: Any) {
        if display == "0" {
            display = "6"
        }else {
            display += "6"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func sevenButton(_ sender: Any) {
       if display == "0" {
            display = "7"
        }else {
            display += "7"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    @IBAction func eightButton(_ sender: Any) {
        if display == "0" {
            display = "8"
        }else {
            display += "8"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        if display == "0" {
            display = "9"
        }else {
            display += "9"
        }
        if performMath == true{
            defaultValue = Float(display)!
        }
        result.text = "\(display)"
        clearColorButton()
        clearButtonOutlet.setTitle("C", for: .normal)
    }
}
