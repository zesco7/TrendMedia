//
//  ShoppingLIstRealmDBViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/08/22.
//

import UIKit

import SnapKit
import RealmSwift

class ShoppingLIstRealmDBViewController: UIViewController {
    
    let localRealm = try! Realm()
    
    let tableVIew: UITableView = {
        let view = UITableView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    var tasks: Results<ShoppingList>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVIew.delegate = self
        tableVIew.dataSource = self
        tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableVIew)
        tableVIew.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        

        
    }
    
    


}

extension ShoppingLIstRealmDBViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = tasks[indexPath.row].list
        return cell
    }
    
    
    
    
    
}
