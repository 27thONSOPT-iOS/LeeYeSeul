//
//  MusicRankTVC.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import UIKit

class MusicRankTVC: UITableViewCell {
    
    static let identifier = "MusicRankTVC"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var musicImageView: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(rank: Int, music: Music) {
        musicImageView.image = music.makeAlbumImage()
        rankLabel.text = "\(rank + 1)"
        titleLabel.text = music.title
        singerLabel.text = music.singer
    }

}
