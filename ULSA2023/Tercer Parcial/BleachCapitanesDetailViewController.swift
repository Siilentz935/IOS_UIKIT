//
//  BleachCapitanesDetailViewController.swift
//  ULSA2023
//
//  Created by ITIT on 16/05/23.
//

import UIKit

class BleachCapitanesDetailViewController: UIViewController {

    @IBOutlet weak var lblBankai: UILabel!
    @IBOutlet weak var imgCaptain: UIImageView!
    @IBOutlet weak var lblDivision: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    var detailCaptain : capitanesModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Capitan: \(detailCaptain?.Nombre ?? "")"
        if detailCaptain?.Bankai ?? true {
            lblBankai.text = "Si"
        }else{
            lblBankai.text = "No"
        }
        lblName.text = "Nombre: \(detailCaptain?.Nombre ?? "")"
        lblDivision.text = "Division: \(detailCaptain?.Division ?? 0)"
        lblStatus.text = "Estado: \(detailCaptain?.Estatus ?? "")"
        imgCaptain.image = UIImage(named: detailCaptain?.image ?? "")
        // Do any additional setup after loading the view.
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
