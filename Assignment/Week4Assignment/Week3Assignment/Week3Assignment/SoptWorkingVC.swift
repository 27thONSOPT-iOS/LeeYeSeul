//
//  ViewController.swift
//  Week3Assignment
//
//  Created by 이예슬 on 11/6/20.
//

import UIKit

class SoptWorkingVC: UIViewController {
    
    @IBOutlet weak var navTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
}

extension SoptWorkingVC: UICollectionViewDelegateFlowLayout, UIScrollViewDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize { return CGSize(width: 150,height: 225)}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 27 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 24, bottom: 0, right: 24) }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:collectionView.frame.width ,height:420)
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        navTopConstraint.constant = -88
        UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        navTopConstraint.constant = 0
        UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
    }
    
}
extension SoptWorkingVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier,for: indexPath) as? CollectionViewCell else{
            return UICollectionViewCell()
        }
        cell.setObjects(imageName: "juhyeok", name: "이주혁", msg: "#먀먀")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind{
            case UICollectionView.elementKindSectionHeader:
                let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerview", for: indexPath)
                return headerView
            default:
                break
            
        }
        return UICollectionReusableView()
        
    }
    
    
}
