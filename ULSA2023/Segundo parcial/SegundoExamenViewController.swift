//
//  SegundoExamenViewController.swift
//  ULSA2023
//
//  Created by ITIT on 28/03/23.
//

import UIKit

class SegundoExamenViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "perfil"){
        let destinationVC = segue.destination as! PerfilViewController
        let name = lblName.text
        destinationVC.nameFromPreviousView = name
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
