//
//  CountdownView.swift
//  Yoobie
//
//  Created by Ron Lu on 10/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class CountdownView: UIView {

    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    let formatter = DateFormatter()
    let userCalnerdar = Calendar.current
    
    let reqComp: Set<Calendar.Component> = [
        Calendar.Component.day,
        Calendar.Component.hour,
        Calendar.Component.minute,
        Calendar.Component.second
    ]
    
    func timeCalculator(dateFormat: String, endTime: String, startTime: Date = Date()) -> DateComponents {
        formatter.dateFormat = dateFormat
        let _startTime = startTime
        let _endTime = formatter.date(from: endTime)
        
        let timeDifference = userCalnerdar.dateComponents(reqComp, from: _startTime, to: _endTime!)
        return timeDifference
    }
    
    func start() {
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timePrinter), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @objc func timePrinter() -> Void {
        let timee = timeCalculator(dateFormat: "MM/dd/yyyy hh:mm:ss a", endTime: "08/11/2018 12:00:00 a")
        dayLabel.text = "\(timee.day!)"
        hourLabel.text = "\(timee.hour!)"
        minLabel.text = "\(timee.minute!)"
        secLabel.text = "\(timee.second!)"
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        comInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        comInit()
    }

    private func comInit(){
        Bundle.main.loadNibNamed("CountdownView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
