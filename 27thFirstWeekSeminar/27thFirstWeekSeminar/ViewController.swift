//
//  ViewController.swift
//  27thFirstWeekSeminar
//
//  Created by 이예슬 on 10/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    @IBAction func touchUpNext(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else{
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    @IBAction func touchUpClick(_ sender: Any) {
        myLabel.text = "hi 나는 예스리ㅣㅣㅣ"
        myLabel.sizeToFit()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

