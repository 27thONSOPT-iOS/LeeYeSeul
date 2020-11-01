//
//  Music.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import Foundation
import UIKit

struct Music {
    var title: String
    var singer: String
    var albumImageName: String
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
