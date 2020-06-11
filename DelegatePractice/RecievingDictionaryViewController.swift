//
//  RecievingDictionaryViewController.swift
//  DelegatePractice
//
//  Created by TTN on 12/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class RecievingDictionaryViewController: UIViewController, sendingDataToRecievingViewController{

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var fathersName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextScreenTapped(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DictionaryBroadcastViewController") as! DictionaryBroadcastViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func sendingDictionary(data: [String : String]) {
        name.text = data["name"]
        age.text = data["age"]
        fathersName.text = data["fathersName"]
    }

}
