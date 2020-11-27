//
//  SignInVC.swift
//  Week6Assignment
//
//  Created by 이예슬 on 2020/11/27.
//

import UIKit

class SignInVC: UIViewController {
    var userName = ""
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func simpleAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    @IBAction func touchUpSignIn(_ sender: Any) {
        AuthService.shared.signIn(email: emailTextField.text ?? "", password: passwordTextField.text ?? ""){ networkResult in
            switch networkResult{
            case .success(let data):
                print("로그인 성공")
                let signinData = data as! SigningData
                self.userName = signinData.userName
                self.simpleAlert(title: "로그인 성공", message: "\(self.userName)님 안녕하세요.")
            case .requestErr(let message):
                self.simpleAlert(title: "로그인 실패", message: "디코딩 오류")
            case .pathErr:
                self.simpleAlert(title: "로그인 실패", message: "pathErr")
            case .serverErr:
                self.simpleAlert(title: "로그인 실패", message: "serverErr")
            case .networkFail:
                self.simpleAlert(title: "로그인 실패", message: "networkFail")
                
            
            }
        }
    }
    
    @IBAction func touchUpSignUp(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "SignUpVC") as? SignUpVC else{ return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated: true,completion: nil)
    }
}
