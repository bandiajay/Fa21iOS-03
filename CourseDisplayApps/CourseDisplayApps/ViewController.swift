//
//  ViewController.swift
//  CourseDisplayApps
//
//  Created by Ajay Bandi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PrevButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    var courses  = [["44555", "Network Security", "fall"],
                    ["44643", "Mobile Edge Computing", "spring"],
                    ["44443", "Data Streaming", "summer"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //details of the first course (0 index) including image.
        crsNum.text = courses[0][0]
        crsTitle.text = courses[0][1]
        crsSem.text = courses[0][2]
        
        //previous button should be disabled.
        PrevButton.isEnabled = false
    }

    @IBAction func PreviousButtonClicked(_ sender: UIButton) {
        //go back to the previous data point in the array
        //when user visited all the elements, previous button should be disabled.
        
    }
    
    

    @IBAction func NextButtonClicked(_ sender: UIButton) {
        //the data must be updated to th next element
        //if the user reach the last element, next button must be disabled.
    }
    
}

