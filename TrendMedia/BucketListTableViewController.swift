//
//  BucketListTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/19.
//

import UIKit

class BucketListTableViewController: UITableViewController {

    static let identifier = "BucketListTableViewController"
    
    @IBOutlet weak var userTextField: UITextField!
    
    var list = ["범죄도시2", "탑건", "토르"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "버킷리스트"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "xmark", style: .plain, target: <#T##Any?#>, action: #selector(closeButtonClicked))
        
        tableView.rowHeight = 100
        list.append("마녀2")
        list.append("헤어질결심")


            }
    
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: BucketListTableViewCell.identifier, for: indexPath) as! BucketListTableViewCell // as? 타입 캐스팅
        
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //우측 스와이프 디폴트 기능: commit editingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            //배열 삭제 후 테이블뷰 갱신
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        //1. if-let
        if let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) {
            list.append(value)
            tableView.reloadData()
        } else {
            //토스트 메시지 띄우기
        }
        
        //2.guard
        
        guard let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) else {
            //토스트 메시지 띄우기
            return
        }
        list.append(sender.text!)
        tableView.reloadData()
    }
        
        //list.append(sender.text!)
        //tableView.reloadData()
        //중요!!!! : 리로드데이터를 통해 데이터갱신해서 추가될때마다 테이블셀에 표시되게 해줌
        //tableView.reloadRows(at: [IndexPath(row: 0, section: 0), IndexPath(row: 1, section: 0)],  with: .fade)
        
    }
    
    

