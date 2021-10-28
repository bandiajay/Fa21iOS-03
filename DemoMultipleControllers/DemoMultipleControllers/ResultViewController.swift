//
//  ResultViewController.swift
//  DemoMultipleControllers
//
//  Created by Ajay Bandi on 10/18/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var amountEnteredOutlet: UILabel!
    
    
    @IBOutlet weak var FinalAmountOutlet: UILabel!
    
    @IBOutlet weak var discountEnteredOutlet: UILabel!
    
    var amountentered = ""
    var discountentered = ""
    var priceAfterDiscount = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // amountEnteredOutlet.text = amountentered
        print("amountEnteredOutlet.text \(amountentered)")
        amountEnteredOutlet.text = amountentered
        discountEnteredOutlet.text = discountEnteredOutlet.text! + discountentered
        FinalAmountOutlet.text = priceAfterDiscount
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
