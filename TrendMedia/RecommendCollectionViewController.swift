//
//  RecommendCollectionViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit
import Toast
import Kingfisher

/*테이블뷰,컬렉션뷰 차이
 tableview -> collectionview
 row -> item : 행을 아이템이라고 부름
 heighForRowAt 대신 flowLayOut사용(heighForRowAt이 없는 이유)
 */


class RecommendCollectionViewController: UICollectionViewController {

    var imageURL = "https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20220708_123%2F1657272256389R34Q0_JPEG%2Fmovie_image.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //컬렉션뷰의 셀크기, 셀사이 간격 등 설정(estimate size none으로 설정!)
        let layout = UICollectionViewFlowLayout()
        let spacing : CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        layout.itemSize = CGSize(width: width / 3, height: (width / 3) * 1.2)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as! RecommendCollectionViewCell
        
        cell.posterImage.backgroundColor = .orange
        
        let url = URL(string: imageURL)
        cell.posterImage.kf.setImage(with: url)
        
        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        view.self.makeToast("\(indexPath.item)번째 셀을 선택했습니다.", duration: 1, position: .center)
        
    }
}
