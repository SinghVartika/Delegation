//
//  ViewController.swift
//  DelegatePractice
//
//  Created by TTN on 10/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ques1Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "RecievingDictionaryViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func ques2Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "RecievingViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ques3Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "NotificationViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

