//
//  RestaurantListTableViewCell.swift
//  ULSA2023
//
//  Created by ITIT on 02/05/23.
//

import UIKit

class RestaurantListTableViewCell: UITableViewCell {
    @IBOutlet weak var imgRestaurant: UIImageView!
    @IBOutlet weak var btnHeart: UIButton!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var datas : restaurantModel? {
        didSet {
            lblName.text = datas?.name
            lblRating.text = "Calificacion: \(datas?.rating ?? 0)"
            imgRestaurant.image = UIImage(named: datas?.imgName ?? "")
           
    }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
