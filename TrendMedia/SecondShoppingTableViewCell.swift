//
//  SecondShoppingTableViewCell.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class SecondShoppingTableViewCell: UITableViewCell {

    @IBOutlet weak var secondCheckbox: UIImageView!
    @IBOutlet weak var secondShoppingList: UILabel!
    @IBOutlet weak var secondStarButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
