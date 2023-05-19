//
//  PerfilViewController.swift
//  ULSA2023
//
//  Created by ITIT on 28/03/23.
//

import UIKit
import NotificationView
class PerfilViewController: UIViewController {
    var nameFromPreviousView : String?
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEstatura: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    override func viewDidLoad() {
        self.title = "Perfil de \(nameFromPreviousView ?? "noFunciono")"
        let tap = UITapGestureRecognizer(target:self,action: #selector(UIInputViewController.dismissKeyboard))
        super.viewDidLoad()
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: Any) {
        let notificationView = NotificationView.default
        notificationView.title = "Mensaje"
        notificationView.subtitle = "Datos Correstos"
        notificationView.body = "Datos Correctos de \(txtNombre.text ?? "")"
        notificationView.image = UIImage(named: "success")
        notificationView.show()
        self.navigationController!.popToRootViewController(animated: true)
    }
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
