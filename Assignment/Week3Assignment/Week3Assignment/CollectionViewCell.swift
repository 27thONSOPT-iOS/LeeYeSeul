//
//  CollectionViewCell.swift
//  Week3Assignment
//
//  Created by 이예슬 on 11/6/20.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    
    func setObjects(imageName:String, name:String,msg:String){
        imageView.image = UIImage(named:imageName)
        nameLabel.text = name
        msgLabel.text = msg
    }
}
