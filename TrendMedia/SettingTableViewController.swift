//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {

    
    var birthdayFriends = ["침착맨","주호민","기안84","김풍","김성모"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //섹션의 갯수(옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    //헤더(옵션)
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "친구 140명"
        } else {
            return "섹션"
        }
    }
    
    //푸터(옵션)
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "푸터"
    }
    
     //1. 셀의 갯수 : numberOfRowsInSection
     //ex. 카톡 친구수에 따라 셀숫자 조정
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return birthdayFriends.count
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 1
        } else {
            return 0
        }
    }
    
    //2. 셀의 디자인과 데이터(필수): cellForRowAt
    //ex. 카톡이름, 프사, 상태메시지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("cellforroawat", indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetailCell")!
                   cell.textLabel?.text = "1번 인덱스 텍스트"
                   cell.textLabel?.textColor = .systemBlue
                   cell.textLabel?.font = .boldSystemFont(ofSize: 3)
                   cell.detailTextLabel?.text = "디테일 레이블"
                   cell.imageView?.image = UIImage(systemName: "star.fill")
                   return cell
            } 

    //셀의 높이(옵션이지만 빈도 높음) (feat.tableView.rowHeight)
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return 50
}
}
