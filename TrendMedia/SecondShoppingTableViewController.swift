//
//  SecondShoppingTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class SecondShoppingTableViewController: UITableViewController {

    
    
    var secondShoppingListStored = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func secondTextField(_ sender: UITextField) {
        secondShoppingListStored.append(sender.text!)
        tableView.reloadData()
    }
}
