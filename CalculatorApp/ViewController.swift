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
    
    @IBOutlet weak var LblDisplay: UILabel!
    
    @IBAction func Btnzero(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "0"
    }
    
    @IBAction func BtnOne(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "1"
    }
    
    @IBAction func BtnTwo(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "2"
    }
    
    @IBAction func BtnThree(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "3"
    }
    
    @IBAction func BtnFour(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "4"
    }
    
    @IBAction func BtnFive(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "5"
    }
    
    @IBAction func BtnSix(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "6"
    }
    
    @IBAction func BtnSeven(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "7"
    }
    
    @IBAction func BtnEight(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "8"
    }
    
    @IBAction func BtnNine(_ sender: UIButton) {
        LblDisplay.text = LblDisplay.text! + "9"
    }
    
    @IBAction func BtnPlusMinus(_ sender: UIButton) {
    }
    
    @IBAction func BtnDecimal(_ sender: UIButton) {
    }
    
    @IBAction func BtnEqual(_ sender: UIButton) {
    }
    
    @IBAction func BtnAdd(_ sender: UIButton) {
    }
    
    @IBAction func BtnSubtract(_ sender: UIButton) {
    }
    
    @IBAction func BtnMultiply(_ sender: UIButton) {
    }
    
    @IBAction func BtnDivide(_ sender: UIButton) {
    }
    
    @IBAction func BtnClear(_ sender: UIButton) {
    }
    
    @IBAction func BtnParentheses(_ sender: UIButton) {
    }
    
    @IBAction func BtnPercentage(_ sender: UIButton) {
    }
    
    @IBAction func BtnBack(_ sender: UIButton) {
    }
    
}
