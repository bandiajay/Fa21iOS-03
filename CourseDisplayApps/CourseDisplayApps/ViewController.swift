//
//  ViewController.swift
//  CourseDisplayApps
//
//  Created by Ajay Bandi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NextButtonOutlet: UIButton!
    @IBOutlet weak var PrevButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    var imageNumber = 0
    
    @IBOutlet weak var crsSem: UILabel!
    
    var courses  = [["img01","44555", "Network Security", "fall"],
        ["img02","44643", "Mobile Edge Computing", "spring"],
        ["img03", "44443", "Data Streaming", "summer"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //details of the first course (0 index) including image.
        updateData(imageNumber)
        
        //previous button should be disabled.
        PrevButton.isEnabled = false
    }

    @IBAction func PreviousButtonClicked(_ sender: UIButton) {
        NextButtonOutlet.isEnabled = true
        //go back to the previous data point in the array
        imageNumber -= 1
        updateData(imageNumber)
        
        //when user visited all the elements, previous button should be disabled.
        if imageNumber == 0{
            PrevButton.isEnabled = false
        }
    }
    
    

    @IBAction func NextButtonClicked(_ sender: UIButton) {
        
        PrevButton.isEnabled = true
        //the data must be updated to the next element
        imageNumber += 1
        updateData(imageNumber)
        //if the user reach the last element, next button must be disabled.
        if imageNumber == courses.count-1{
            NextButtonOutlet.isEnabled = false
            
        }
    }
    
    func updateData(_ imgNumber:Int){
        ImageDisplay.image = UIImage(named:courses[imgNumber][0])
        crsNum.text = courses[imgNumber][1]
        crsTitle.text = courses[imgNumber][2]
        crsSem.text = courses[imgNumber][3]
    }
    
}

