//
//  ViewController.swift
//  Calculator3App
//
//  Created by Ajay Bandi on 9/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    var operand1: Double = -1.1
    var operand2: Double = -1.1
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Button6(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "6"
        if operand1 == -1.1{
            operand1 = 6
        }
        else{
            operand2 = 6
        }
    }
    
    @IBAction func Button8(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "8"
        if operand2 == -1.1{
            operand2 = 8
        }
        else{
            operand1 = 8
        }
    }
    
    @IBAction func ButtonMinus(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "-"
        if calcOperator == " "{
            calcOperator = "-"
        }
    }
    
    @IBAction func ButtonEquals(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcOperator == "-"{
            DisplayLabel.text = DisplayLabel.text! + "\(operand1-operand2)"
        }
        
    }
}

