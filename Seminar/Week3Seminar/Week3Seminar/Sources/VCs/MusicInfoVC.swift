//
//  MusicInfoVC.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import UIKit

class MusicInfoVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    var infoData: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setMusicInfo()
        albumImageView.image = simpleBlurFilterExample(inputImage: albumImageView.image!)
    }
    
    func setMusicInfo(){
        if let music = infoData {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            albumImageView.image = music.makeAlbumImage()
        }
        
        
    }
    
    func simpleBlurFilterExample(inputImage: UIImage) -> UIImage {
        // convert UIImage to CIImage
        let inputCIImage = CIImage(image: inputImage)!
        
        // Create Blur CIFilter, and set the input image
        let blurFilter = CIFilter(name: "CIGaussianBlur")!
        blurFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
        blurFilter.setValue(5, forKey: kCIInputRadiusKey)

        // Get the filtered output image and return it
        let outputImage = blurFilter.outputImage!
        return UIImage(ciImage: outputImage)
    }
    
    
}
