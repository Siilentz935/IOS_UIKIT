//
//  GestureController.swift
//  ULSA2023
//
//  Created by ITIT on 09/03/23.
//

import UIKit

class GestureController: UIViewController {

    @IBOutlet weak var imfUp: UIImageView!
    @IBOutlet weak var imgDown: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    @IBOutlet weak var imgLeft: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gestureUp(_ sender: Any) {
        print("Up")
        imfUp.isHidden = true
        
    }
    
    
     @IBAction func gestureDown(_ sender: Any) {
         print("down")
         imgDown.isHidden = true
     }
     
    @IBAction func gestureRight(_ sender: Any) {
        print("right")
        imgRight.isHidden = true
    }
    
    @IBAction func gestureLeft(_ sender: Any) {
        print("left")
        imgLeft.isHidden = true
    }
    
}
