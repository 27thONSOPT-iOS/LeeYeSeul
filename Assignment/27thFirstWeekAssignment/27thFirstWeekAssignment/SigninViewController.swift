//
//  SigninViewController.swift
//  27thFirstWeekAssignment
//
//  Created by 이예슬 on 10/12/20.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func touchUpSignin(_ sender: Any) {
        let dvc = self.navigationController?.presentingViewController
        guard let vc = dvc as? MainViewController else{
            return
        }
        vc.nameValue = nameTextField.text ?? ""
        vc.partValue = partTextField.text ?? ""
        self.navigationController?.presentingViewController?.dismiss(animated : true)
    }
    @IBAction func touchUpSignup(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController else{
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
}
