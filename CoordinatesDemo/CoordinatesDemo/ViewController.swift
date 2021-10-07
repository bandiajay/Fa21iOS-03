//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Ajay Bandi on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageOutletView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = ImageOutletView.frame.minX
        let miny = ImageOutletView.frame.minY
        print(minx, miny)
        
        let maxx = ImageOutletView.frame.maxX
        let maxy = ImageOutletView.frame.maxY
        print(maxx, maxy)
        
        let midx = ImageOutletView.frame.midX
        let midy = ImageOutletView.frame.midY
        print(midx, midy)
        
        let w = ImageOutletView.frame.width
        let h = ImageOutletView.frame.height
        print(w, h)
        
        //change the location of the imageview to the bottom right corner
        ImageOutletView.frame.origin.x = 314
        ImageOutletView.frame.origin.y = 796
        
        
        //change the location of the imageview to the center of the screen
        ImageOutletView.frame.origin.x = 157
        ImageOutletView.frame.origin.y = 398

        
        
    }

    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        
        //when the submit button is clicked,
        //The width and height should be increased by 100
        var w = ImageOutletView.frame.width
        w += 100
        
        var h = ImageOutletView.frame.height
        h += 100
        
        //The imageview must be in the center of the screen.
        let x = ImageOutletView.frame.origin.x-50
        let y = ImageOutletView.frame.origin.y-50
        
        let imageFrame = CGRect(x: x, y: y, width: w, height: h)
        
        ImageOutletView.frame = imageFrame
    }
    
}

