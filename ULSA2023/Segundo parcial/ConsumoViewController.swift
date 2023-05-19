//
//  ConsumoViewController.swift
//  ULSA2023
//
//  Created by ITIT on 28/03/23.
//

import UIKit

class ConsumoViewController: UIViewController {
    @IBOutlet weak var lblLitros: UILabel!
    var cantidad = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Consumo Agua"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gestureVaso(_ sender: Any) {
        cantidad = cantidad+0.2
        TextoAgua(cantidadLitros:cantidad)
    }
    
    @IBAction func gesture600ml(_ sender: Any) {
        cantidad = cantidad+0.6
        TextoAgua(cantidadLitros:cantidad)
    }
    @IBAction func gesture1L(_ sender: Any) {
        cantidad = cantidad+1.0
        TextoAgua(cantidadLitros:cantidad)
    }
    @IBAction func gesture15L(_ sender: Any) {
        cantidad = cantidad+1.5
        TextoAgua(cantidadLitros:cantidad)
    }
    func TextoAgua(cantidadLitros: Double){
        lblLitros.text = "Tienes \(cantidadLitros)L de agua"
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        lblLitros.text = "Tienes 0L de agua"
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
