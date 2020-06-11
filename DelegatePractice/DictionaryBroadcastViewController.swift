//
//  DictionaryBroadcastViewController.swift
//  DelegatePractice
//
//  Created by TTN on 11/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

protocol sendingDataToRecievingViewController {
    func sendingDictionary(data: [String : String])
}

class DictionaryBroadcastViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var fatherNameTextField: UITextField!
    
    var delegate: sendingDataToRecievingViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendDataTapped(_ sender: Any) {
        delegate?.sendingDictionary(data: ["name": nameTextField.text ?? "No Name", "age": ageTextField.text ?? "No Age", "fathersName": fatherNameTextField.text ?? "No father's name"])
        self.navigationController?.popViewController(animated: true)
    }

}
