//
//  ShoppingTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet weak var titleOfScene: UILabel!
    @IBOutlet weak var listToAdd: UITextField!
    @IBOutlet weak var buttonToAdd: UIButton!
    
    var shoppingListToAdd = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOfScene.text = "쇼핑"
        titleOfScene.textAlignment = .center
        listToAdd.backgroundColor = .systemGray6
        listToAdd.placeholder = "무엇을 구매하실 건가요?"
        buttonToAdd.setTitle("추가", for: .normal)
        buttonToAdd.tintColor = .black
        buttonToAdd.layer.cornerRadius = 10
        buttonToAdd.backgroundColor = .systemGray4
       
    }

    //셀갯수 : shoppingListToAdd 배열 사용
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingListToAdd.count
    }

    
    //셀 내용 채우기 : dequeueReusableCell 사용
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.shoppingListAdded.text = shoppingListToAdd[indexPath.row]
        cell.shoppingListAdded.font = .boldSystemFont(ofSize: 15)
        cell.backgroundColor = .systemGray6
        
        return cell
    }
    
    //우측 스와이프 디폴트 기능: commit editingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            shoppingListToAdd.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    @IBAction func inputToAddList(_ sender: UITextField) {
        shoppingListToAdd.append(sender.text!)
        tableView.reloadData()
    }
    
    
    
    @IBAction func buttonToAddList(_ sender: UIButton) {
        
        return
        
    }
    
    
}

/*
 초안 피드백
 #업데이트 완료
 -. 텍스트필드 입력시 셀 추가 기능
 -. 오른쪽 스와이프
 -. 디폴트 쇼핑리스트 표시
 
 #업데이트 예정
 -. 체크박스, 스타버튼 추가
 -. 셀간격 추가(셀끼리 붙어있지않게)
 -. 텍스트필드 박스 실선 제거
 -. 추가버튼 눌렀을때 셀 추가 기능
 
 */
