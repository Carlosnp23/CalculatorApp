//
//  ViewController.swift
//  CalculatorApp
//
//  File name: CalculatorApp
//  Author's name: Carlos Norambuena Perez
//  Student ID: 301265667
//  Date: 2022-10-22
//  App Description: Calculator App (Assigment 3)
//  Version of Xcode: Version 14.0.1 (14A400)

import UIKit
import Darwin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var Operation = 0
    var Value1 = ""
    var Value2 = ""
    var Value1Landscape = ""
    var Value2Landscape = ""
    var OperationLandscape = 0

    
    func cleanzero() {
        if (LblDisplay.text == "0") {
            LblDisplay.text = ""
        }
    }
    
    func cleanzeroLandscape() {
        if (LblDisplay_Landscape.text == "0") {
            LblDisplay_Landscape.text = ""
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
    
    // Button Equal
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
        ValuePercent = ValuePercent! / 100
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
    
    @IBAction func BtnZero_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "0"

    }
    
    @IBAction func BtnOne_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "1"

    }
    
    @IBAction func BtnTwo_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "2"

    }
    
    @IBAction func BtnThree_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "3"

    }
    
    @IBAction func BtnFour_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "4"

    }
    
    @IBAction func BtnFive_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "5"

    }
    
    @IBAction func BtnSix_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "6"
    }
    
    @IBAction func BtnSeven_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "7"
    }
    
    @IBAction func BtnEight_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "8"
    }
    
    @IBAction func BtnNine_Landscape(_ sender: UIButton) {
        cleanzeroLandscape()
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "9"
    }
    
    @IBAction func BtnAdd_Landscape(_ sender: UIButton) {
        Value1Landscape = LblDisplay_Landscape.text!
        OperationLandscape = 1
        LblDisplay_Landscape.text = ""
    }
    
    @IBAction func BtnSubtract_Landscape(_ sender: UIButton) {
        Value1Landscape = LblDisplay_Landscape.text!
        OperationLandscape = 2
        LblDisplay_Landscape.text = ""
    }
    
    @IBAction func BtnMultiply_Landscape(_ sender: UIButton) {
        Value1Landscape = LblDisplay_Landscape.text!
        OperationLandscape = 3
        LblDisplay_Landscape.text = ""
    }
    
    @IBAction func BtnDivide_Landscape(_ sender: UIButton) {
        Value1Landscape = LblDisplay_Landscape.text!
        OperationLandscape = 4
        LblDisplay_Landscape.text = ""
    }
    
    @IBAction func BtnClean_Landscape(_ sender: UIButton) {
        Value1Landscape = ""
        Value2Landscape = ""
        OperationLandscape = 0
        
        LblDisplay_Landscape.text = "0"
    }
    
    @IBAction func BtnParentheses_Landscape(_ sender: UIButton) {
    }
    
    @IBAction func BtnPercentage_Landscape(_ sender: UIButton) {
        var ValuePercent = Double (LblDisplay_Landscape.text!)
        ValuePercent = ValuePercent! / 100
        LblDisplay_Landscape.text = String(ValuePercent!)
    }
    
    @IBAction func BtnPlusMinus_Landscape(_ sender: UIButton) {
        let ValueMinus = LblDisplay_Landscape.text
        Value1Landscape = "-" + ValueMinus!
        LblDisplay_Landscape.text = Value1Landscape
    }
    
    @IBAction func BtnDecimal_Landscape(_ sender: UIButton) {
        LblDisplay_Landscape.text = LblDisplay_Landscape.text! + "."

    }
    
    // Button Equal
    @IBAction func BtnEqual_Landscape(_ sender: UIButton) {
        Value2Landscape = LblDisplay_Landscape.text!
        
   // Operations
        switch OperationLandscape {
            
            //Add
        case 1:
            let value3 = (Double(Value1Landscape)!)
            let value4 = (Double(Value2Landscape)!)
            
            let Result = String (value3 + value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay_Landscape.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 + value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay_Landscape.text = decimalResult
            }
            
            break
            
            //Subtract
        case 2:
            let value3 = (Double(Value1Landscape)!)
            let value4 = (Double(Value2Landscape)!)
            
            let Result = String (value3 - value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay_Landscape.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 - value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay_Landscape.text = decimalResult
            }
            
            break
            
            //Multiply
        case 3:
            let value3 = (Double(Value1Landscape)!)
            let value4 = (Double(Value2Landscape)!)
            
            let Result = String (value3 * value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay_Landscape.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 * value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay_Landscape.text = decimalResult
                
            }
            
            break
            
            //Divide
        case 4:
            let value3 = (Double(Value1Landscape)!)
            let value4 = (Double(Value2Landscape)!)
            
            let Result = String (value3 / value4)
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay_Landscape.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = value3 / value4
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay_Landscape.text = decimalResult
            }
            
            break
            
        case 5:
            
            let xCubed = (Double(Value1Landscape)!)
            let n = (Double(Value2Landscape)!)
            
            let Result = String((pow(Double(xCubed),Double(n))))
            let nunArray = Result.components(separatedBy: ".")
            if nunArray[1] == "0" {
                LblDisplay_Landscape.text = nunArray[0]
            }
            else {
                // %.8f for eight decimal places
                let tip: Double = pow(Double(xCubed),Double(n))
                let decimalResult: String = String(format: "%.8f", tip)
                LblDisplay_Landscape.text = decimalResult
            }
            
            break
        
        default:
            break
        }
        
    }
    
    
    
    //Delete last digit displayed
    @IBAction func BtnBack_Landscape(_ sender: UIButton) {
        
        if(LblDisplay_Landscape.text!.count == 1 || LblDisplay_Landscape.text! == "0") {
            LblDisplay_Landscape.text = "0"
        }
        else {
            LblDisplay_Landscape.text?.removeLast()
        }
    }
    
    
    //New Operations Landscape
    
    @IBAction func XSquare(_ sender: UIButton) {
                
        let xSquare = Double (LblDisplay_Landscape.text!)
                
        let x: Double = 2
        LblDisplay_Landscape.text = String((pow(Double(xSquare!),Double(x))))
       
    }
    
    @IBAction func XCubed(_ sender: UIButton) {
        
        let xCubed = Double (LblDisplay_Landscape.text!)
                
        let x: Double = 3
        LblDisplay_Landscape.text = String((pow(Double(xCubed!),Double(x))))
        
    }
    
    @IBAction func Xn(_ sender: UIButton) {
        
        Value1Landscape = LblDisplay_Landscape.text!
        OperationLandscape = 5
        LblDisplay_Landscape.text = ""
    }
    
    @IBAction func Squareroot(_ sender: UIButton) {
        let squareRoot = Double (LblDisplay_Landscape.text!)
        if (squareRoot! >= 0) {
            let Res =  sqrt(squareRoot!)
            LblDisplay_Landscape.text = String(format: "%.8f", Res)
        }
    }
    
    @IBAction func Cubedroot(_ sender: UIButton) {
        let squareRoot = Double (LblDisplay_Landscape.text!)
        if (squareRoot! >= 0) {
            let Res =  cbrt(squareRoot!)
            LblDisplay_Landscape.text = String(format: "%.8f", Res)
        }
    }
    
    @IBAction func Pi(_ sender: UIButton) {
        let pi = Double.pi
        LblDisplay_Landscape.text = String(format: "%.8f", pi)
    }

    
    @IBAction func ln(_ sender: UIButton) {
        let ln = Double(LblDisplay_Landscape.text!)
        let Res = Darwin.log(Double(ln!))
        LblDisplay_Landscape.text = String(format: "%.8f", Res)
    }
    
    
    @IBAction func log(_ sender: UIButton) {
        let log = Double(LblDisplay_Landscape.text!)
        let Res = Darwin.log10(Double(log!))
        LblDisplay_Landscape.text = String(format: "%.8f", Res)
        
    }
    
    
}
