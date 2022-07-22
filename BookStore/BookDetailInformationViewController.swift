//
//  BookDetailInformationViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/22.
//

import UIKit

class BookDetailInformationViewController: UIViewController {

    static let identifier = "BookDetailInformationViewController"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func webBookInfoLinkButton(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "BookStore", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: WebBookInfoLinkViewController.identifier) as! WebBookInfoLinkViewController
        
        self.present(viewController, animated: true)
        viewController.modalPresentationStyle = .fullScreen
        //self.navigationController?.pushViewController(viewController, animated: true)
        let nav = UINavigationController(rootViewController: viewController)
        
        
    }
    

}
