//
//  BroadcastingViewController.swift
//  DelegatePractice
//
//  Created by TTN on 12/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

let notificationIdentifier = "boardcastData"

class BroadcastingViewController: UIViewController {

    @IBOutlet weak var broadcastMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        broadcastMessage.becomeFirstResponder()
    }
    

    @IBAction func broadcastMessgaeTapped(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationIdentifier) , object: self , userInfo: [1 : broadcastMessage.text!])
        self.navigationController?.popViewController(animated: true)
    }

}
