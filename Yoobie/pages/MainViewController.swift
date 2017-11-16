//
//  MainViewController.swift
//  Yoobie
//
//  Created by Ron Lu on 10/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class MainViewController: RootController {

    var pageController: PageController!
    
    @IBOutlet weak var homeImg: UIImageView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var prizeImg: UIImageView!
    @IBOutlet weak var settingImg: UIImageView!
    @IBOutlet weak var homeBar: UIView!
    @IBOutlet weak var profileBar: UIView!
    @IBOutlet weak var prizeBar: UIView!
    @IBOutlet weak var settingBar: UIView!
    @IBOutlet weak var waveView: WaveProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        waveView.isCircle = false
        waveView.percent = 0.9
        waveView.isDouble = false
        waveView.firstWaveColor = UIColor(red: (0/255.0), green: (150/255.0), blue: (255/255.0), alpha: 0.5)
        setTab(num: 0)
    }
    
    @IBAction func home(_ sender: Any) {
        pageController.goToPage(num: 0)
        setTab(num: 0)
    }
    
    @IBAction func menu(_ sender: Any) {
        Kit.pop(contex: self, id: "Menu")
    }
    
    
    @IBAction func profile(_ sender: Any) {
        pageController.goToPage(num: 1)
        setTab(num: 1)
    }
    
    @IBAction func prize(_ sender: Any) {
        pageController.goToPage(num: 2)
        setTab(num: 2)
    }
    
    @IBAction func setting(_ sender: Any) {
        pageController.goToPage(num: 3)
        setTab(num: 3)
    }
    
    func setTab(num: Int){
        homeImg.image = #imageLiteral(resourceName: "Light Home Icon.png")
        profileImg.image = #imageLiteral(resourceName: "Light Profile Icon.png")
        prizeImg.image = #imageLiteral(resourceName: "Light Prizes Icon.png")
        settingImg.image = #imageLiteral(resourceName: "Light Settings Icon.png")
        homeBar.backgroundColor = UIColor.white
        profileBar.backgroundColor = UIColor.white
        prizeBar.backgroundColor = UIColor.white
        settingBar.backgroundColor = UIColor.white
        switch (num)
        {
        case 0:
            waveView.percent = 0.9
            homeImg.image = #imageLiteral(resourceName: "Dark Home Icon.png")
            homeBar.backgroundColor = UIColor.black
        case 1:
            waveView.percent = 0.6
            profileImg.image = #imageLiteral(resourceName: "Dark Profile Icon.png")
            profileBar.backgroundColor = UIColor.black
        case 2:
            waveView.percent = 0.4
            prizeImg.image = #imageLiteral(resourceName: "Dark Prizes Icon.png")
            prizeBar.backgroundColor = UIColor.black
        case 3:
            waveView.percent = 0.2
            settingImg.image = #imageLiteral(resourceName: "Dark Settings Icon.png")
            settingBar.backgroundColor = UIColor.black
        default:
            waveView.percent = 0.9
            homeImg.image = #imageLiteral(resourceName: "Dark Home Icon.png")
            homeBar.backgroundColor = UIColor.black
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pageController"{
            pageController = segue.destination as! PageController
            pageController.mainVC = self
        }
    }
}
