//
//  SecondViewController.swift
//  27thFirstWeekSeminar
//
//  Created by 이예슬 on 10/10/20.
//

import UIKit

class SecondViewController: UIViewController {
    var dvc: ViewController?
    @IBOutlet weak var tf: UITextField!
    @IBAction func touchUpBack(_ sender: Any) {
        let preVC = self.presentingViewController 
//        print(preVC)
        dvc = self.storyboard?.instantiateViewController(withIdentifier: "firstVC") as! ViewController
        print(dvc)
        print("1")
        dvc!.labelText = self.tf.text!
        self.dismiss(animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.present(dvc!,animated:false)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
