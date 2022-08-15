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
    
    
    //MARK: - 함수 생성
    
    
    func configureCell(data: Movie) {
        
        titleOfMovie.text = data.movieTitle
        titleOfMovie.font = .boldSystemFont(ofSize: 15)
        openingDay.text = "\(data.movieRelease) |  \(data.movieRuntime) | \(data.movieRate)"
        introduction.text = "ㅃㅃㅃㅃㅃㅃㅂㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ"
        introduction.numberOfLines = 0

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
