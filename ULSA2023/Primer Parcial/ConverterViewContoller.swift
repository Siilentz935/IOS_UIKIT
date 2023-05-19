//
//  ViewController.swift
//  ULSA2023
//
//  Created by ITIT on 07/02/23.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var imgResult: UIImageView!
    @IBOutlet weak var txtCelsiusTemperature: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Concertidor de grados"
        // Do any additional setup after loading the view.
    }

    @IBAction func convertCelsiusToFarenheit(_ sender: Any) {
        let celcius = Double(txtCelsiusTemperature.text ?? "0.0")
        if convertirTemperatura(tempCelciuss: celcius ?? 0.0) <= 50 {
            imgResult.image =   UIImage(named: "snowflake-png")
        }else{
            imgResult.image =   UIImage(named: "sun-transparent-background-free-png")
        }
        lblResult.text = """
        La temperatura en celcius es
        \(celcius ?? 0.0) y en farenheit es  \(convertirTemperatura(tempCelciuss: celcius ?? 0.0))
"""
    }
    func convertirTemperatura (tempCelciuss: Double) -> Double{
        let tempFareinheit = ((tempCelciuss * 9)/5)+32
        return tempFareinheit
    }
}


