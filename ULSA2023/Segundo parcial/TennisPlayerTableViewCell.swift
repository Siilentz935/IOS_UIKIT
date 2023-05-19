//
//  TennisPlayerTableViewCell.swift
//  ULSA2023
//
//  Created by ITIT on 18/04/23.
//

import UIKit

class TennisPlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var lblRetired: UILabel!
    @IBOutlet weak var lblHand: UILabel!
    @IBOutlet weak var lblRank: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgTennis: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var data : tennisPlayer? {
        didSet {
            lblName.text = data?.name
            if data?.retired ?? true {
                lblRetired.text = "Retirado"
            }else{
                lblRetired.text = "Activo"
            }
            lblHand.text = data?.strongArm
            lblRank.text = data?.ranking
            imgTennis.image = UIImage(named: data?.image ?? "")
            imgTennis.layer.cornerRadius = imgTennis.bounds.size.width / 2.0
    }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
