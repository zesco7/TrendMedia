//
//  MovieTableViewCell.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var poster: UIView!
    @IBOutlet weak var titleOfMovie: UILabel!
    @IBOutlet weak var openingDay: UILabel!
    @IBOutlet weak var introduction: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
