//
//  PickerViewTestViewController.swift
//  Week3Seminar
//
//  Created by 이예슬 on 10/31/20.
//

import UIKit

class PickerViewTestViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    var parts: [Part] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartDate()
        initLayout()
        partPickerView.delegate = self
        partPickerView.dataSource = self
        print(parts.count)

    }
    func initLayout(){
        let initPart = parts[0]
        imageView.image = initPart.makeImage()
        partLabel.text = initPart.partName
    }
    func setPartDate(){
        parts.append(contentsOf: [
        Part(imageName: "plan", partName: "Plan"), Part(imageName: "design", partName: "Design"), Part(imageName: "server", partName: "Server"), Part(imageName: "ios", partName: "iOS"), Part(imageName: "android", partName: "Android"), Part(imageName: "web", partName: "Web")
        ])
    }

}
extension PickerViewTestViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // PickerView의 각 행(row)의 title을 지정해주는 메소드
        return parts[row].partName
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
    inComponent component: Int) {
    // PickerView에서 행(row)를 선택했을 때 수행할 동작을 지정해 주는 메소드
        let selectedPart = parts[row]
        // 이미지 지정
        self.imageView.image = selectedPart.makeImage() // 라벨 지정
        self.partLabel.text = selectedPart.partName
        
    }
    
}
extension PickerViewTestViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // PickerView의 컴포넌트 숫자를 지정해 주는 메소드
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // PickerView의 각 컴포넌트에서 행의 개수를 지정해 주는 메소드
        return parts.count
    }
    
    
}
