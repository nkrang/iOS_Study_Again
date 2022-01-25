//
//  CodePresentViewController.swift
//  CH02_ScreenTransition
//
//  Created by SeongEun on 2022/01/25.
//

import UIKit

//D 데이터를 보내는 쪽
protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //D 데이터 보내는 쪽
    //delegate 변수 앞에는 weak 필수! 메모리 누수 막아줌
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        //D
        self.delegate?.sendData(name: "삼다수")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
