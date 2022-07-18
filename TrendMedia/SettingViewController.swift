//
//  SettingViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/18.
//

import UIKit

class SettingViewController: UITableViewController {
    
    @IBOutlet weak var titleOfView: UILabel!
    
    
    var header : [String] = ["전체 설정", "개인 설정", "기타"]
    var section1 : [String] = ["공지사항", "실험실", "버전 정보"]
    var section2 : [String] = ["개인/보안", "알림", "채팅", "멀티프로필"]
    var section3 : [String] = ["고객센터/도움말"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleOfView.text = "설정"
        titleOfView.textAlignment = .center
        titleOfView.font = .systemFont(ofSize: 20)

    }
    
    //Section
    //섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return header.count
    }
    
    //헤더
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
    
    //Cell
    //1. 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return section1.count
        } else if section == 1 {
            return section2.count
        } else if section == 2 {
            return section3.count
        } else {
            return 0
        }
    }
    
    //2. 셀 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForSetting")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = section1[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        } else if indexPath.section == 1 {
            cell.textLabel?.text = section2[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        } else if indexPath.section == 2 {
            cell.textLabel?.text = section3[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        }

        return cell
    }
    
}

/*
 #업데이트 완료
 -. 섹션갯수 : header배열 count로 처리
 -. 헤더 : header배열 인덱싱으로 처리
 -. 셀갯수 : section 분기문으로 처리
 -. 셀데이터 : indexpath.section 분기문으로 처리
 
 #피드백
 -. 셀갯수는 indexpath.section 분기문으로 처리 못하는지 확인하기, 분기문 더 줄일수 있는 방법 확인하기
 -. 헤더 글자크기 조정 기능 추가하기
 -. 64행에서 왜 cell 리턴하는지 확인하기
 
 */
