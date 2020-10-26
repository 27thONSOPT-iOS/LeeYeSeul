//
//  SignupViewController.swift
//  27thFirstWeekAssignment
//
//  Created by 이예슬 on 10/12/20.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func touchUpSignup(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
