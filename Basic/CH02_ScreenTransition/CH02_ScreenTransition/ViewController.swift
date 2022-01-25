//
//  ViewController.swift
//  CH02_ScreenTransition
//
//  Created by SeongEun on 2022/01/25.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    

    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let codePushVC = self.storyboard?.instantiateViewController(withIdentifier: "CodePushVC") as? CodePushViewController else { return }
        codePushVC.name = "황성은"
        self.navigationController?.pushViewController(codePushVC, animated: true)
    }
    
    @IBAction func tabCodePresentButton(_ sender: Any) {
        guard let codePresentVC = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentVC") as? CodePresentViewController else { return }
        codePresentVC.name = "쌀국수 먹으니 너무 졸림"
        //D delegate 위임 받기
        codePresentVC.delegate = self
        //화면 전체로 띄워주기
        codePresentVC.modalPresentationStyle = .fullScreen
        self.present(codePresentVC, animated: true, completion: nil)
    }
    
    //화면 전환 전에 실행됨
    //Segue로 데이터를 넘길 때는 prepare를 쓰는 것이 좋다
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let seguePushVC = segue.destination as? SeguePushViewController {
            seguePushVC.name = "웨옹이"
        }
    }
    
    func sendData(name: String) {
        //codePresentVC에서 backbutton을 누르면 얘가 호출됨
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

