//
//  ShotClockController.swift
//  ULSA2023
//
//  Created by ITIT on 28/02/23.
//

import UIKit
import SwiftySound

class ShotClockController: UIViewController {

    @IBOutlet weak var btnStartStop: UIButton!
    @IBOutlet weak var lblDot: UILabel!
    @IBOutlet weak var lblSeconds: UILabel!
    var mysound : Sound?
    var countDownTimer : Timer?
    var totalTime = 24
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Shot Clock"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTimer(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        if countDownTimer == nil {
        startTimer()
        }else{
            if btnStartStop.titleLabel?.text == "Stop"{
                countDownTimer?.invalidate()
                btnStartStop.setTitle("Start", for: UIControl.State.normal)
                lblDot.isHidden = false
            }else {
                countDownTimer?.invalidate()
                startTimer()
            }
        }
        
    }
    
    @IBAction func lblReset(_ sender: Any) {
        totalTime = 24
        lblSeconds.text = "24"
    }
    func startTimer(){
       
        countDownTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    @objc func updateTime(){
        lblDot.isHidden = true
        lblSeconds.text = "\(totalTime)"
        if lblDot.isHidden {
            btnStartStop.setTitle("Stop", for: UIControl.State.normal)
        } else {
            btnStartStop.setTitle("Start", for: UIControl.State.normal)
            lblDot.isHidden = false
        }
        if totalTime != 0 {
            totalTime -= 1
        } else{
            endTimer()
        }
    }
    func endTimer(){
        lblDot.isHidden = false
        countDownTimer?.invalidate()
        Sound.enabled = true
        if let URL = Bundle.main.url(forResource: "endgame 2", withExtension: "mp3"){
            mysound = Sound(url: URL)
        }
        mysound?.play { completed in print("completed: \(completed)")
            self.navigationController?.popToRootViewController( animated: true)
        }
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
