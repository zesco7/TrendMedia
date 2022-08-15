//
//  TrendTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/21.
//
/*
import UIKit

class TrendTableViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    @IBAction func movieButtonClicked(_ sender: UIButton) {
        
        //화면전환: 1. 이동할 스토리보드 파일 찾기 2. 스토리보드 내 이동할 뷰컨트롤러 찾기 3. 화면 전환
        //영화버튼클릭> bucketlisttableviewcontroller(띄우기 아래에서 위로 띄우는 present형식으로)
        
        //1.
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        
        //2.
        let vc = storyboard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        
        //값전달
        vc.placeholder = sender.currentTitle
        
        //3.
        self.present(vc, animated: true)
    }
    
    @IBAction func daramaButtonClicked(_ sender: UIButton) {
        //1.
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        
        //2.
        let vc = storyboard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        //2.5 present시 화면전환방식 설정 : safe area까지 풀스크린으로 띄우기(옵션) *풀스크린 디스플레이는 이전화면으로 못돌아감...
        vc.modalPresentationStyle = .fullScreen
        
        //3.
        self.present(vc, animated: true)
    }
    
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        //1.
        let storyboard = UIStoryboard(name: "Trend", bundle: nil)
        
        //2.
        let vc = storyboard.instantiateViewController(withIdentifier: BucketListTableViewController.identifier) as! BucketListTableViewController
        
        //2.5 present 시 화면전환방식 설정(옵션)
        let nav = UINavigationController(rootViewController: vc)
        
        vc.modalPresentationStyle = .fullScreen
        
        //3.
        self.present(nav, animated: true)
    }
    
}
 */
