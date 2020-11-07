//
//  AnimationTestVC.swift
//  Week4Seminar
//
//  Created by 이예슬 on 11/7/20.
//

import UIKit

class AnimationTestVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initPosition()
        
    }
    func initPosition(){
        imageView.frame = CGRect(x:100,y:100,width:150,height:100)
    }
    @IBAction func touchUpStart(_ sender: Any) {
        let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotate = CGAffineTransform(rotationAngle: .pi / 4)
        let move = CGAffineTransform(translationX: 200, y: 200)
        let combine = scale.concatenating(move).concatenating(rotate) //합친다
        UIView.animate(withDuration: 1.0, delay: 0,animations:{
                        self.imageView.transform = combine },completion:{
                            finished in
                            UIView.animate(withDuration: 0.3){
                                self.imageView.transform = .identity
                            }
                        })
        
        /*let newPosition = CGRect(x:100,y:200,width:300,height:200)
        
        UIView.animate(withDuration: 1.0, animations:{
        //self.imageView.frame = newPosition
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 200)
            
        }){finished in
            UIView.animate(withDuration: 1.0){
            //self.initPosition()
                self.imageView.transform = CGAffineTransform(translationX: 0, y: 0)
            }
        }
 */
        
    }
    
}
