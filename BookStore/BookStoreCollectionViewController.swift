//
//  BookStoreCollectionViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookStoreCollectionViewController: UICollectionViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.title = "책"
        let layout = UICollectionViewFlowLayout()
        let spacing : CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        layout.itemSize = CGSize(width: width / 2, height: (width / 3) * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookStoreCollectionViewCell.identifier, for: indexPath) as? BookStoreCollectionViewCell else {
            return UICollectionViewCell()
        }
            cell.bookImage.backgroundColor = .orange
        
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "BookStore", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: BookDetailInformationViewController.identifier) as! BookDetailInformationViewController
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func moveButtonToBrowser(_ sender: UIBarButtonItem) {
        
        //1. 스토리보드 찾기
        let storyboard = UIStoryboard(name: "BookStore", bundle: nil)
        
        //2. 뷰컨트롤러 찾기
        let viewController = storyboard.instantiateViewController(withIdentifier: BookInformationViewController.identifier) as! BookInformationViewController
        
        //2.5 present 시 화면전환방식 설정(옵션)
        //viewController.modalPresentationStyle = .fullScreen
        //let navigation = UINavigationController(rootViewController: viewController)
        
        //self.present(viewController, animated: true)
        
    }
    
    
}


/*
 초안피드백
 #업데이트 완료
 -. 네비게이션바, 바버튼
 -. 3페이지 화면전환
 -. 오른쪽바버튼 선택시 fullscreen present
 
 #업데이트 필요
 -. 바버튼 이름 변경
 
 #질문
 -. 네비게이션 컨트롤러 일일이 생성해서 연결해야하는지? 하나에 다연결할수없는지?
 -. 네비바를 추가하면 추가가 안되서 네비아이템 추가하고 바버튼 추가했는데 그래도 되는지?
 -. 바버튼 타이틀 변경 또는 없애기 방법?
 -. 뷰컨트롤러 클래스를 한개 파일에 모을 수 있는 방법?
 
 혼자 세시간반 걸려서 완성했다. 이번에는 코드만 따라한게 아니라 왜 이 기능이 필요한지 순서를 생각하면서 만들었는데 효과가 좋았다. 그치만 아직 밀린 진도 때문에 공부가 제대로 안되어 있어서 시간이 너무 오래걸린다. 주말에 복습하면서 계속 공부해야겠다.
 
 */
