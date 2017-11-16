//
//  SettingController.swift
//  Yoobie
//
//  Created by Ron Lu on 13/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit
import UserNotifications

class SettingController: RootController, UIPickerViewDataSource, UIPickerViewDelegate{

    
    @IBOutlet weak var timePicker: UIPickerView!
    let periods = ["5 min", "6 min", "7 min", "8 min", "9 min", "10 min", "11 min", "12 min", "13 min", "14 min", "15 min"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index = 3
    }
    
    @IBAction func wifiOnly(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Hey! check this out."
        content.body = "Go to Yoobie to see ad"
        content.categoryIdentifier = "adCategory"
        content.sound = UNNotificationSound.default()
        
        //let attachement = try! UNNotificationAttachment(identifier: "image", url: Bundle.main.url(forResource: "cheer", withExtension: "png")!, options: nil)
        
       // content.attachments = [attachement]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 6000, repeats: true)
        let request = UNNotificationRequest(identifier: "sendAds", content: content, trigger: trigger) // Schedule the notification.
        
        let center = UNUserNotificationCenter.current()
        
        center.add(request) { (error : Error?) in
            if error != nil {
                // Handle any errors
            }
        }
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(periods[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return periods.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //will do it later
    }

}
