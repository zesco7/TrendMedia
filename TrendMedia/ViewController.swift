//
//  ViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var dateLabel2: UILabel!
    @IBOutlet var dateLabelCollection: [UILabel]!
    
    
    //변수의 스코프
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func configureLablDesign() {
        //1. OutletCollection
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .brown
        }
        dateLabelCollection[0].text = "첫번째 텍스트"
        dateLabelCollection[1].text = "두번째 텍스트"
        //레이블이 늘어날경우 인덱스를 구분하기 어렵기 때문에 2처럼 일일이 객체명으로 접근하는게 낫다.
        
        
        //2. UILabel
        let labelArray = [dateLabel, dateLabel2]
        for i in labelArray {
            i?.font = .boldSystemFont(ofSize: 20)
            i?.textColor = .brown
    }
        dateLabel.text = "첫번째 텍스트"
        dateLabel2.text = "두번째 텍스트"
        
        
        
        
        
    }

    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "yyyy/MM/dd"
        
        dateLabel.text = format.string(from: sender.date)
    }
    
    
    
}
