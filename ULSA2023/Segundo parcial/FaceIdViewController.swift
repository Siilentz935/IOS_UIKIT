import UIKit
import LocalAuthentication

class FaceIdViewController: UIViewController {
    
    private let biometricIDAuth = BiometricIDAuth()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func faceIDAction(_ sender: Any) {
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
                
                self?.view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
                
                
                
                print("success")
            }
        }
        
        
    }
}
