//
//  WebBookInfoLinkViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/22.
//

import UIKit

class WebBookInfoLinkViewController: UIViewController {

    static let identifier = "WebBookInfoLinkViewController"
    
    @IBOutlet weak var bookLink: UILabel!
    let bookURL = "https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=298203316"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookLink.text = bookURL
        bookLink.font = .systemFont(ofSize: 20, weight: .bold)
        bookLink.numberOfLines = 0
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
