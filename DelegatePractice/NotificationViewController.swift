//
//  NotificationViewController.swift
//  DelegatePractice
//
//  Created by TTN on 11/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit
import UserNotifications

class NotificationViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBOutlet weak var alert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().delegate = self

    UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
                   (granted,error) in
            if granted {
                print("granted")
               DispatchQueue.main.async {
                 self.alert.text = "You will Recieve Notification in 60 seconds"
                }
                      
             }
              else {
                    print("no permission")
                    self.alert.text = "You have to give permission to recieve notifications"
                   }
               }
               
               let content = UNMutableNotificationContent()
               content.title = "Meeting Details"
               content.body = "Tomorrow at 2 PM"
               content.sound = .defaultCriticalSound(withAudioVolume: 9)
               
               let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
               
               let uuidString = UUID().uuidString
               let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
               
               let notificationCenter = UNUserNotificationCenter.current()
               notificationCenter.add(request) { (error) in
                   if error == nil {
                       
                   }
                   else {
                       print("error", error as Any)
                   }
                   
               }
           }
    
    

  func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    completionHandler([.alert, .badge, .sound])
 }

}

//MARK: Ques 4
//What is push payload size in iOS?
//Payload size is 4kb

//MARK: Ques 5
// What is push notification?How it works?
//A push notification is a message that pops up on a mobile device.Apple Push Notification service (APNs) propagates push notifications to devices having applications registered to receive those notifications. Each device establishes an accredited and encrypted IP connection with the service and receives notifications over this persistent connection. Providers connect with APNs through a persistent and secure channel while monitoring incoming data intended for their client applications. When new data for an application arrives, the provider prepares and sends a notification through the channel to APNs, which pushes the notification to the target device..
