//
//  ViewController.swift
//  CalculatorApp
//
//  File name: CalculatorApp
//  Author's name: Carlos Norambuena Perez
//  Student ID: 301265667
//  Date: 2022-10-22
//  App Description: Calculator App (Assigment 2)
//  Version of Xcode: Version 14.0.1 (14A400)

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var Operation = 0
    var Value1 = ""
    var Value2 = ""
    
    func cleanzero() {
        if (LblDisplay.text == "0") {
            LblDisplay.text = ""
        }
    }
    
    //Result Display
    @IBOutlet weak var LblDisplay: UILabel!
    
    //Numbers
    
    @IBAction func BtnZero(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "0"
    }
    
    @IBAction func BtnOne(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "1"
    }
    
    @IBAction func BtnTwo(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "2"
    }
    
    @IBAction func BtnThree(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "3"
    }
    
    @IBAction func BtnFour(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "4"
    }
    
    @IBAction func BtnFive(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "5"
    }
    
    @IBAction func BtnSix(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "6"
    }
    
    @IBAction func BtnSeven(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "7"
    }
    
    @IBAction func BtnEight(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "8"
    }
    
    @IBAction func BtnNine(_ sender: UIButton) {
        cleanzero()
        LblDisplay.text = LblDisplay.text! + "9"
    }
    
    @IBAction func BtnPlusMinus(_ sender: UIButton) {
        
        let ValueMinus = LblDisplay.text
        Value1 = "-" + ValueMinus!
        LblDisplay.text = Value1
        
    }
    
    @IBAction func BtnDecimal(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "."
    }
    
    
    @IBAction func BtnEqual(_ sender: UIButton) {
        Value2 = LblDisplay.text!
        
   // Operations
        switch Operation {
            
            //Add
        case 1:
            let value3 = (Double(Value1)!)
            let value4 = (Double(Value2)!)
            
            let Result = String (value3 + value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 + value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay.text = decimalResult
            }
            
            break
            
            //Subtract
        case 2:
            let value3 = (Double(Value1)!)
            let value4 = (Double(Value2)!)
            
            let Result = String (value3 - value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 - value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay.text = decimalResult
            }
            
            break
            
            //Multiply
        case 3:
            let value3 = (Double(Value1)!)
            let value4 = (Double(Value2)!)
            
            let Result = String (value3 * value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 * value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay.text = decimalResult
                
            }
            
            break
            
            //Divide
        case 4:
            let value3 = (Double(Value1)!)
            let value4 = (Double(Value2)!)
            
            let Result = String (value3 / value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 / value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay.text = decimalResult
            }
            
            break
        default:
            break
        }
    }
    
    @IBAction func BtnAdd(_ sender: UIButton) {
        Value1 = LblDisplay.text!
        Operation = 1
        LblDisplay.text = ""
    }
    
    @IBAction func BtnSubtract(_ sender: UIButton) {
        Value1 = LblDisplay.text!
        Operation = 2
        LblDisplay.text = ""
    }
    
    @IBAction func BtnMultiply(_ sender: UIButton) {
        Value1 = LblDisplay.text!
        Operation = 3
        LblDisplay.text = ""
    }
    
    @IBAction func BtnDivide(_ sender: UIButton) {
        Value1 = LblDisplay.text!
        Operation = 4
        LblDisplay.text = ""
    }
    
    @IBAction func BtnClean(_ sender: UIButton) {
        Value1 = ""
        Value2 = ""
        Operation = 0
        
        LblDisplay.text = "0"
    }
    
    
    @IBAction func BtnParentheses(_ sender: UIButton) {
    }
    
    @IBAction func BtnPercentage(_ sender: UIButton) {
        
        var ValuePercent = Double (LblDisplay.text!)
        ValuePercent = ValuePercent! / 100.0
        LblDisplay.text = String(ValuePercent!)
        
    }
    
    //Delete last digit displayed
        @IBAction func BtnBack(_ sender: UIButton) {
            
            if(LblDisplay.text!.count == 1 || LblDisplay.text! == "0") {
                LblDisplay.text = "0"
            }
            else {
                LblDisplay.text?.removeLast()
            }
        }
    
    
    //Result Display Landscape
    @IBOutlet weak var LblDisplay_Landscape: UILabel!
    
    //Numbers Landscape
    
    @IBAction func BtnZero_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnOne_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnTwo_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnThree_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnFour_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnFive_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnSix_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnSeven_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnEight_Landscape(_ sender: Any) {
    }
    
    @IBAction func BtnNine_Landscape(_ sender: Any) {
    }
    
    
    
    
    
    
    
    
    
    
    //New Operations Landscape
    
    @IBAction func XSquare(_ sender: UIButton) {
                
        let value3 = (Double(Value1)!)
        let value4 = (Double(2))
        
        let Result = String (value3 / value4)
        let nunArray = Result.components(separatedBy: ".")
        if nunArray[1] == "0" {
            LblDisplay.text = nunArray[0]
        }
        else {
            // %.8f for eight decimal places
            let tip: Double = value3 / value4
            let decimalResult: String = String(format: "%.8f", tip)
            LblDisplay.text = decimalResult
        }
        
        
    }
    
    @IBAction func XCubed(_ sender: UIButton) {
    }
    
    @IBAction func Xn(_ sender: UIButton) {
    }
    
    @IBAction func Squareroot(_ sender: UIButton) {
    }
    
    @IBAction func Cubedroot(_ sender: UIButton) {
    }
    
    @IBAction func Pi(_ sender: UIButton) {
    }
    
    @IBAction func In(_ sender: UIButton) {
    }
    
    @IBAction func log(_ sender: UIButton) {
    }
    
    
}
