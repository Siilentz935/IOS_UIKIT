//
//  ExamenParcial1.swift
//  ULSA2023
//
//  Created by ITIT on 23/02/23.
//

import UIKit

class ExamenParcial1: UIViewController {

    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtMetros: UITextField!
    @IBOutlet weak var lblIMC: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calculador de IMC"
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalcularIMC(_ sender: Any) {
        let pesoKg = Double(txtKg.text ?? "0.0")
        let metros = Double(txtMetros.text ?? "0.0")
        lblIMC.text = calcularMasaCorporal(pesoEnKg: pesoKg ?? 0.0, estaturaEnMetros: metros ?? 0.0)
       
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func calcularMasaCorporal (pesoEnKg: Double, estaturaEnMetros: Double) -> String{
        var estatusDelPaciente = ""
        let imcDouble = pesoEnKg/(estaturaEnMetros * estaturaEnMetros)
        if imcDouble <= 24.9 && imcDouble > 19 {
            estatusDelPaciente = "El paciente se encuentra en el peso adecuado"
            return estatusDelPaciente
            
        }else{
            estatusDelPaciente = "El paciente NO se encuentra en el peso adecuado"
            return estatusDelPaciente
        }
     
    }
}
