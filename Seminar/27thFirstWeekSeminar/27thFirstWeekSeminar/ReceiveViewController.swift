//
//  ReceiveViewController.swift
//  27thFirstWeekSeminar
//
//  Created by 이예슬 on 10/10/20.
//

import UIKit

class ReceiveViewController: UIViewController {
    
    var email: String?
    var update: Bool?
    var cycle: Int?
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var cycleLabel: UILabel!
    @IBAction func touchUpBack(_ sender: Any) {
        self.dismiss(animated:true,completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    func setLabels(){
        emailLabel.text = email
        if update!{
            updateLabel.text = "On"
        }
        else{
            updateLabel.text = "Off"
        }
        
        cycleLabel.text = "\(cycle!)분"
    }


}
