//
//  SecondShoppingTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class SecondShoppingTableViewController: UITableViewController {

    
    
    var secondShoppingListStored = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    @IBOutlet weak var secondFieldToWrite: UIView!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var secondButtonToAdd: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondFieldToWrite.backgroundColor = .systemGray6
        secondFieldToWrite.layer.cornerRadius = 10
        
        secondTextField.placeholder = "무엇을 구매하실 건가요?"
        secondTextField.backgroundColor = .systemGray6
        
        secondButtonToAdd.backgroundColor = .systemGray5
        secondButtonToAdd.layer.cornerRadius = 10
        secondButtonToAdd.setTitle("추가", for: .normal)
        secondButtonToAdd.tintColor = .black

    }

    
    
    //MARK: - 셀 갯수 설정
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondShoppingListStored.count
    }
    
    //MARK: - 셀 내용 설정
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondShoppingTableViewCell", for: indexPath) as! SecondShoppingTableViewCell
        
        cell.secondShoppingList.text = secondShoppingListStored[indexPath.row]
        cell.secondShoppingList.font = .boldSystemFont(ofSize: 15)
        
        return cell
    }
    //MARK: - 액션
    //1. 텍스트필드 액션 추가
    @IBAction func secondTextField(_ sender: UITextField) {
        secondShoppingListStored.append(sender.text!)
        tableView.reloadData()
    }
    
    //2. 스와이프 삭제 액션 추가
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            secondShoppingListStored.remove(at: indexPath.row)
            tableView.reloadData()
    }
    
    }
    
}


/*
 연습 피드백
 #업데이트 완료
 -. 셀내용 불러오기(dequeue)
 -. 텍스트필드 액션 추가(append, reloadData)
 -. 스와이프 삭제 액션 추가(EditingStyle)
 
 #업데이트 예정
 -. 상단 텍스트필드 테두리 삭제
 -. 하단 셀 배경 회색으로 변경 및 테두리 둥글게 적용
 
 #피드백
 1. 테이블 클래스 연결
 2. identifier 이름 설정
 3. 셀 갯수 설정시 number of rows in section체크(numbers in section아님)
 
 테이블클래스 연결 분명히 한것 같은데 안되어있어서 시간 많이 잡아먹었다. 테이블뷰 만들 때 자주 실수하는 세가지는 꼭 주의해서 코딩하자!
 */
