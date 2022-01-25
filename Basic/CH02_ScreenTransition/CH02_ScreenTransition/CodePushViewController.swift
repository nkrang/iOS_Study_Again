//
//  CodePushViewController.swift
//  CH02_ScreenTransition
//
//  Created by SeongEun on 2022/01/25.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
