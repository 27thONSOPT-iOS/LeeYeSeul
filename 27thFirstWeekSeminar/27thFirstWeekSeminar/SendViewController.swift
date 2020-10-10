//
//  SendViewController.swift
//  27thFirstWeekSeminar
//
//  Created by 이예슬 on 10/10/20.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var updateStateLabel: UILabel!
    @IBOutlet weak var updateIntervalLabel: UILabel!
    @IBOutlet weak var updateStateSwitch: UISwitch!
    @IBOutlet weak var updateIntervalStepper: UIStepper!
    @IBAction func valueChangedSwitch(_ sender: UISwitch) {
        if sender.isOn{
            self.updateStateLabel.text = "자동 갱신"
        }
        else{
            self.updateStateLabel.text = "수동 갱신"
        }
    }
    @IBAction func valueChangedStepper(_ sender: UIStepper) {
        updateIntervalLabel.text = "\(Int(sender.value))분 마다"
    }
    @IBAction func touchUpSubmit(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "ReceiveViewController") as? ReceiveViewController else{
            return
        }
        dvc.email = self.emailTextField.text
        dvc.update = self.updateStateSwitch.isOn
        dvc.cycle = Int(self.updateIntervalStepper.value)
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc,animated:true,completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
