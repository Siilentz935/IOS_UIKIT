//
//  FaceIdSegParcialExamenViewController.swift
//  ULSA2023
//
//  Created by ITIT on 30/03/23.
//

import UIKit
import LocalAuthentication
class FaceIdSegParcialExamenViewController: UIViewController {
    private let biometricIDAuth = BiometricIDAuth()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func autfaceId(_ sender: Any) {
        biometricIDAuth.canEvaluate {(canEvaluate, _, canEvaluateError)in
            guard canEvaluate else {
                print("Error, flata de configuracion")
                return
            }
            biometricIDAuth.evaluate {[weak self] (success, error)in
                guard success else {
                    print ("no configurado")
                    return
                }
                let vc = UIStoryboard.init(name: "SegParcial", bundle: Bundle.main).instantiateViewController(withIdentifier: "menu") as? SegundoExamenViewController
                self?.navigationController?.pushViewController(vc!, animated: true)
            
                
                
                
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
}
