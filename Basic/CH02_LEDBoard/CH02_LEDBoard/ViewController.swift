//
//  ViewController.swift
//  CH02_LEDBoard
//
//  Created by SeongEun on 2022/01/25.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
    

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contentsLabel.textColor = .yellow
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? SettingViewController {
            settingVC.delegate = self
            settingVC.ledText = self.contentsLabel.text
            settingVC.textColor = self.contentsLabel.textColor
            settingVC.backgroundColor = self.view.backgroundColor ?? .blue
        }
    }
    
}

