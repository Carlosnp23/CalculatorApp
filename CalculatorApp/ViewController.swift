//
//  ViewController.swift
//  CalculatorApp
//
//  File name: CalculatorApp
//  Author's nme: Carlos Norambuena Perez
//  Student ID: 301265667
//  Date: 2022-09-25
//  App Description: Calculator App (Assigment 1)
//  Version of Xcode: Version 14.0 (14A309)

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
    
    @IBOutlet weak var LblDisplay: UILabel!
    
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
    }
    
    @IBAction func BtnDecimal(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "."
    }
    
    @IBAction func BtnEqual(_ sender: UIButton) {
        Value2 = LblDisplay.text!
        
        switch Operation {
        case 1:
            let value3 = (Float(Value1)!)
            let value4 = (Float(Value2)!)
            
            let Result = value3 + value4
            LblDisplay.text = (String(Result))
            break
        case 2:
            let value3 = (Float(Value1)!)
            let value4 = (Float(Value2)!)
            
            let Result = value3 - value4
            LblDisplay.text = (String(Result))
            break
        case 3:
            let value3 = (Float(Value1)!)
            let value4 = (Float(Value2)!)
            
            let Result = value3 * value4
            LblDisplay.text = (String(Result))
            break
        case 4:
            let value3 = (Float(Value1)!)
            let value4 = (Float(Value2)!)
            
            let Result = value3 / value4
            LblDisplay.text = (String(Result))
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
    }
    
    @IBAction func BtnBack(_ sender: UIButton) {
        
        LblDisplay.text?.removeLast()
        
    }
    
}
