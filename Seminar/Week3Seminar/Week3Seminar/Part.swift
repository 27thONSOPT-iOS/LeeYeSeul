//
//  Part.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import Foundation
import UIKit

struct Part{
    var imageName: String
    var partName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named:imageName)
    }
}
