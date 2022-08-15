//
//  BucketListTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/19.
//

/*
import UIKit

struct Todo {
    var title: String
    var done: Bool
}


class BucketListTableViewController: UITableViewController {
    
    //1. 값전달받을 프로퍼티 생성
    var placeholder: String?
    
    @IBOutlet weak var textField: UITextField!
    static let identifier = "BucketListTableViewController"
    
    
    // 클래스는 레퍼런스타입 이므로 인스턴스 자체를 변경하지 않는 이상 한번만 될거임
    // @IBOutlet viewDidLoad 호출 되기 직전에 NIL이 아닌지 NIL인지 알수 있음
    
    @IBOutlet weak var userTextField: UITextField! {
    
    didSet {
        userTextField.textColor = .systemRed
        print("텍스트필드 Didset")
    }
    }
    //list 프로퍼티가 추가,삭제 등 변경되고나서 테이블뷰를 항상 갱신
    var list = [Todo(title: "범죄도시", done: true)] {
        didSet {
            tableView.reloadData()
            print("리스트가 변경됨 \(list), \(oldValue)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = ""
        textField.placeholder = "영화영화"
        navigationItem.title = "버킷리스트"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        
        tableView.rowHeight = 100
//        list.append("마녀2")
//        list.append("헤어질결심")


            }
    
    @objc
    func closeButtonClicked() {
        self.dismiss(animated: true)
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: BucketListTableViewCell.identifier, for: indexPath) as! BucketListTableViewCell // as? 타입 캐스팅
        
        cell.bucketlistLabel.text = list[indexPath.row].title
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        
        cell.bucketlistLabel.tag = indexPath.row
        cell.bucketlistLabel.addTarget(self, action: #selector(checkboxButtonClicked(sender:)), for: .touchUpInside)
        
        let value = list[indexPath.row].done ? "checkmark.square.fill" : "checkmark.square"
        cell.checkboxButton.setImage(UIImage(systemName: value), for: .normal)
        
        return cell
    }
    
    @objc func checkboxButtonClicked(sender: UIButton) {
        print("\(sender.tag)번째 버튼 클릭!")
        
        //배열 인덱스를 찾아서 done을 바꿔야 된다. 그리고 테이블뷰 갱신해야한다.
        list[sender.tag].done = !list[sender.tag].done
        
        
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: RecommendCollectionViewController.identifier) as! RecommendCollectionViewController
        
        self.navigationController?.pushViewController(viewController, animated: true)
   //     vc.placeholder.textfield
    }
    
    
    
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
//        //느낌표나 물음표 계속 찍어줘야할때 하지 않기 위한 방법
//        //1. if-let
//        if let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) {
//            list.append(value)
//            tableView.reloadData()
//        } else {
//            //토스트 메시지 띄우기 : 빈칸 입력 또는 글자수 초과
//        }
//
//        //2.guard
//
//        guard let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) else {
//            //토스트 메시지 띄우기 : 빈칸 입력 또는 글자수 초과
//            return
//        }
        list.append(sender.text!)
        //tableView.reloadData()
    }
        
        //list.append(sender.text!)
        //tableView.reloadData()
    list.append(Todo(title: sender.text, done: <#T##Bool#>))
        //중요!!!! : 리로드데이터를 통해 데이터갱신해서 추가될때마다 테이블셀에 표시되게 해줌
        //tableView.reloadRows(at: [IndexPath(row: 0, section: 0), IndexPath(row: 1, section: 0)],  with: .fade)
        
    }
    
    

*/
