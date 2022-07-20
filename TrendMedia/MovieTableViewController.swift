//
//  MovieTableViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/20.
//

import UIKit

class MovieTableViewController: UITableViewController {


    var movieTitle = ["해리포터1", "해리포터2", "해리포터3", "해리포터4", "해리포터5", "해리포터6", "해리포터7", "해리포터8"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - 1. 셀 갯수 추가

    override func numberOfSections(in tableView: UITableView) -> Int {
        return movieTitle.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        
        cell.titleOfMovie.text = movieTitle[indexPath.row]
        
        return cell
    }

}
