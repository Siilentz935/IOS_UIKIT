//
//  animationLottie.swift
//  ULSA2023
//
//  Created by ITIT on 09/03/23.
//

import UIKit
import Lottie

class animationLottie: UIViewController {

    @IBOutlet weak var viewLottie: LottieAnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewLottie.contentMode = .scaleAspectFit
        
        viewLottie.loopMode = .loop
        
        viewLottie.animationSpeed = 0.5
        
        viewLottie.play()
        // Do any additional setup after loading the view.
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
