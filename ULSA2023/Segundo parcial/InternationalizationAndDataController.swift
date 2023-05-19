//
//  InternationalizationAndDataController.swift
//  ULSA2023
//
//  Created by ITIT on 21/03/23.
//

import UIKit

class InternationalizationAndDataController: UIViewController {
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = NSLocalizedString("name", comment: "es el nombre del usuario")
        lblDireccion.text = NSLocalizedString("address", comment: "es la direccion del usuario")
        lblTelefono.text = NSLocalizedString("phone", comment: "es el telefono del usuario")
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FormDetaeilController
        let name = txtDireccion.text
        destinationVC.nameFromPreviousView = name
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
