//
//  ViewController.swift
//  CH01_QuoteGenerator
//
//  Created by SeongEun on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {

    //Strong vs Weak
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quote(contents: "배고플 때는 먹어라.", name: "미야몽"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체"),
        Quote(contents: "멍멍!", name: "강아지"),
        Quote(contents: "야옹!", name: "고양이")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))  //0~4 사이의 난수를 랜덤하게 만들어 줌
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

