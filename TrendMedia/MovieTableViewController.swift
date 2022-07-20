//
//  MovieTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class MovieTableViewController: UITableViewController {

    //구조체 배열타입 변수 선언 : 변수 하나에 타입이 다른 여러 데이터를 넣기 위함.
    //Movie가 클래스였으면 일일이 초기화 해줘야했으나 구조체라서 초기화안해줘도 됨.
    var movieTitle = [Movie(movieTitle: "해리포터1", movieRelease: "2022-2-22", movieOverview: "...중략", movieRuntime: 150, movieRate: 10.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()


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
}
