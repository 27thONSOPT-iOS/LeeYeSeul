//
//  TableViewTestVC.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import UIKit

class TableViewTestVC: UIViewController {
    
    var music: [Music] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicData()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setMusicData(){
        music.append(contentsOf: [
            Music(title: "Lovesick Girls", singer: "BLACK PINK", albumImageName: "blackpink"), Music(title: "Dynamite", singer: "방탄소년단", albumImageName: "bts"),
            Music(title: "positions", singer: "Ariana Grande", albumImageName: "ariana"), Music(title: "놓아줘 (with 태연)", singer: "크러쉬", albumImageName: "crush"), Music(title: "I CAN'T STOP ME", singer: "TWICE", albumImageName: "twice"), Music(title: "Make A Wish (Birthday Song)", singer: "NCT U", albumImageName: "nctu"), Music(title: "ALIEN", singer: "이수현", albumImageName: "leesuhyeon"),
            Music(title: "DON'T TOUCH ME", singer: "환불원정대", albumImageName: "hwanbool"),
            Music(title: "Pretty Savage", singer: "BLACKPINK", albumImageName: "blackpink"),
            Music(title: "Bet You Wanna (feat. Cardi B)", singer: "BLACKPINK", albumImageName: "blackpink")
        ])
    }
    
    
}
extension TableViewTestVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: [indexPath.row], animated: true)
        guard let vc = self.storyboard?.instantiateViewController(identifier: "MusicInfoVC") as? MusicInfoVC else{
            return
        }
        vc.infoData = music[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension TableViewTestVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicRankTVC.identifier) as? MusicRankTVC else {
            return UITableViewCell()
        }
        cell.setCell(rank: indexPath.row, music: music[indexPath.row])
        return cell
    }
    
}
