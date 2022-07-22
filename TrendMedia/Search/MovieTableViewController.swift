//
//  MovieTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit



class MovieTableViewController: UITableViewController {

   
    //var movie = Movie()
    //구조체 배열타입 변수 선언 : 변수 하나에 타입이 다른 여러 데이터를 넣기 위함.
    //Movie가 클래스였으면 일일이 초기화 해줘야했으나 구조체라서 초기화안해줘도 됨.
    var movieTitle = [Movie(movieTitle: "해리포터1", movieRelease: "2022-2-22", movieOverview: "...중략", movieRuntime: 150, movieRate: 10.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "처음으로", style: .plain, target: self, action: #selector(resetButtonClicked))


    }
    
    @objc func resetButtonClicked() {
        //iOS 13+ SceneDelegate 쓸 때 동작하는 코드
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let sceneDelegate = windowScene?.delegate as? SceneDelegate
        
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        sceneDelegate?.window?.rootViewController = viewController
        sceneDelegate?.window?.makeKeyAndVisible()
    }

    // MARK: - 1. 셀 갯수 추가
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitle.count
    }
        
    // MARK: - 2. 셀 내용 추가
    //셀 재사용
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        let data = movieTitle[indexPath.row]
        cell.configureCell(data: data) // configureCell함수의 data를 셀에 display한다. 표시할 data는 구조체 배열타입의 movieTitle임
        return cell
        
    }
    //configureCell함수 사용하는 이유: 셀데이터가 많아지면 코드가 길어져서 파악하기 쉽지 않으므로 tableviewcell에 함수를 만들어서 따로 관리한다. tableviewcontroller에서 굳이 데이터를 직접 표시할 필요는 없음.
    
    
    //셀높이 설정
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height / 8 //UIScreen.main.bounds.height는 디바이스 높이 .width면 폭
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: RecommendCollectionViewController.identifier) as! RecommendCollectionViewController
        
        //2. 값 전달 : vc가 가지고 있는 프로퍼티에 데이터 추가
        //vc.movieTitle = movie.movieTitle
        vc.movieTitle = "값 전달 확인"
        //vc.movieData = movieTitle[Movie()]
        // movieInfo파일이면 타입 배열임 : movieInfo[]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
}

/*
 연습 피드백
 #업데이트 완료
 -. 셀내용 불러오기 : dequeue
 -. Movie 구조체 사용
 -. configureCell 함수 사용
 
 #업데이트 예정
 -. 포스터 및 나머지셀 데이터 채울 예정
 
 #피드백
 -. 셀데이터가 많아지면 tableviewcontroller에서 데이터 관리가 힘들어지므로 tableviewcell에 configureCell 함수 선언하여 데이터 관리
 -. configureCell 함수에 다양한 타입 데이터 한번에 반환하기 위해 Movie 구조체 생성하여 사용
 -. 변수 타입을 구조체 배열로 선언하여 1개 셀에 들어갈 데이터를 준비하고 cellForRowAt에서 셀별로 데이터 반환하여 화면에 표시
 
 
 왜 함수를 선언하는지, 구조체를 만드는지, 변수에 구조체를 어떻게 사용할 건지 등 배경을 이해하는데 집중했다. 어떤 기능이 왜 써이는지 항상 확인하자. 그래야 그냥 코드만 따라하는 것보다 더 빨리 실력이 는다.
 */
