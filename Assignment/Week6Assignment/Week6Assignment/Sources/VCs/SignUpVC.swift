//
//  SignUpVC.swift
//  Week6Assignment
//
//  Created by 이예슬 on 2020/11/27.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func simpleAlert(message: String){
        let alert = UIAlertController(title: "회원가입실패", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    @IBAction func touchUpBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpSignUp(_ sender: Any) {
        AuthService.shared.signUp(email: emailTextField.text ?? "", password: passwordTextField.text ?? "",username: nameTextField.text ?? ""){ networkResult in
            switch networkResult{
            case .success(let data):
                print("회원가입성공")
                self.dismiss(animated: true, completion: nil)
                
            case .requestErr(let message):
                self.simpleAlert(message: message as! String)
                print("디코딩에러,",message)
            case .pathErr:
                self.simpleAlert(message: "pathErr")
                print("parhErr")
            case .serverErr:
                self.simpleAlert(message: "serverErr")
                print("serverErr")
            case .networkFail:
                self.simpleAlert(message: "networkFail")
                print("networkFail")
                
            }
        }
    }
    

}
