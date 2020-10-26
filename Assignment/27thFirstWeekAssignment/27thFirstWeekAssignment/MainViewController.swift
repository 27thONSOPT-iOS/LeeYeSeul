//
//  ViewController.swift
//  27thFirstWeekAssignment
//
//  Created by 이예슬 on 10/12/20.
//

import UIKit

class MainViewController: UIViewController {
    
    var partValue: String = "iOS"
    var nameValue: String = "이예슬"
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    

    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        partLabel.text = partValue
        messageLabel.text = "\(nameValue)님 안녕하세요!"
    }
    
    func setLayout(){
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        signinButton.layer.cornerRadius = 10
    }

    @IBAction func touchUpSignin(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SignNavigation") as? UINavigationController else{
            return
        }
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
    }

}

