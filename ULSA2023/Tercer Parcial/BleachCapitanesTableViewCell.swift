//
//  BleachCapitanesTableViewCell.swift
//  ULSA2023
//
//  Created by ITIT on 16/05/23.
//

import UIKit

class BleachCapitanesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCaptain: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDivision: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblBankai: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var datas : capitanesModel? {
        didSet {
            lblName.text = "Nombre: \(datas?.Nombre ?? "")"
            lblDivision.text = "Division: \(datas?.Division ?? 0)"
            lblStatus.text = "Estado: \(datas?.Estatus ?? "")"
            imgCaptain.image = UIImage(named: datas?.image ?? "")
            if datas?.Bankai ?? true {
                lblBankai.text = "Bankai: Si"
            }else{
                lblBankai.text = "Bankai: No"
            }
            
    }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
