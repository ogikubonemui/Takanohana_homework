//
//  PostViewController.swift
//  nabeatsu
//
//  Created by Yasuyuki Takeshita on 28/04/2019.
//  Copyright © 2019 Yasuyuki Takeshita. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    var count = 0
    
    @IBAction func tapped(_ sender: Any) {
        count += 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "画面をタップして「ドヤ顔ナベアツ」を出そう！"
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func didButton(_ sender: Any) {
        let num = count
        performSegue(withIdentifier: "toNext", sender: num)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextVC = segue.destination as! ViewController
            nextVC.num = sender as! Int
        }
    }
}
