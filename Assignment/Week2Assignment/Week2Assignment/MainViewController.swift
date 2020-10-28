//
//  MainViewController.swift
//  Week2Assignment
//
//  Created by 이예슬 on 10/26/20.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var topButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainScrollView.delegate = self
        makeRound()
    }
    func makeRound(){
        topButton.layer.cornerRadius = topButton.frame.width / 2
    }
    @IBAction func touchUpProfile(_ sender: Any) {
    }
    
    @IBAction func touchUpTop(_ sender: Any) {
        mainScrollView.contentOffset.y = 0
    }
    

}

extension MainViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y
        if y<508{
            topButton.alpha = 0
        }
        else{
            topButton.alpha = 1
        }
    }
}
