//
//  HomeVC.swift
//  Week3Assignment
//
//  Created by 이예슬 on 11/13/20.
//

import UIKit

class HomeVC: UIViewController {

    var name = ""
    var part = ""
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.backgroundColor = .black
        loginButton.layer.cornerRadius = 13.5
        loginButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func touchUpLogin(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "LoginVC") as? LoginVC else{ return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}
