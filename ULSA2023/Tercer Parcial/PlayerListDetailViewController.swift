//
//  PlayerListDetailViewController.swift
//  ULSA2023
//
//  Created by ITIT on 25/04/23.
//

import UIKit

class PlayerListDetailViewController: UIViewController {
    @IBOutlet weak var imgPlayer: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var LblStatus: UILabel!
    @IBOutlet weak var lblRanking: UILabel!
    var detailPlayer : tennisPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Jugardor: \(detailPlayer?.name ?? "")"
        imgPlayer.image = UIImage(named: detailPlayer?.image ?? "")
        lblName.text = detailPlayer?.name
        if detailPlayer?.retired ?? true {
            LblStatus.text = "Retirado"
        }else{
            LblStatus.text = "Activo"
        }
        lblRanking.text = detailPlayer?.ranking
        imgPlayer.layer.cornerRadius = imgPlayer.bounds.size.width / 2.0
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
