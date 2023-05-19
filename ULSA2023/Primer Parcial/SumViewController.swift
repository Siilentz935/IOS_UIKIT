//
//  SumViewController.swift
//  Ejemplo
//
//  Created by ITIT on 26/01/23.
//

import UIKit

class SumViewController: UIViewController {

    @IBOutlet weak var txtFirstNumber: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Suma de numeros"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumNumbers(_ sender: Any) {
        let input1 = txtFirstNumber.text ?? ""
        let input2 = txtSecondNumber.text ?? ""
        let firstNumber = Double(input1) ?? 0.0
        let secondNumber = Double(input2) ?? 0.0
        let sumNumbers = ( firstNumber + secondNumber)
        
        print(sumNumbers)
        let alert = UIAlertController(title: "Suma", message: "El resultado de la suma es \(String(format:"%.0f", sumNumbers))", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion:nil)
        
        
    }
    
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                sumNumbers(self)
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
