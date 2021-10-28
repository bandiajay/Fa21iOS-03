//
//  ViewController.swift
//  DemoMultipleControllers
//
//  Created by Ajay Bandi on 10/18/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var AmountOulet: UITextField!
    
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcButton(_ sender: UIButton) {
        //Read the data from the textboxes.
       let amount = Double(AmountOulet.text!)
        print(amount!)
        
       let discountRate = Double(DiscountOutlet.text!)
        print(discountRate!)
        
        priceAfterDiscount = amount! - (amount!*discountRate!/100)
        
        print(priceAfterDiscount)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.amountentered = AmountOulet.text!
            destination.discountentered = DiscountOutlet.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
        }
    }
    
}

