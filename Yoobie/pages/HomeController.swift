//
//  HomeController.swift
//  Yoobie
//
//  Created by Ron Lu on 10/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class HomeController: RootController {

    @IBOutlet weak var countDownBox: CountdownView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        countDownBox.start()
    }
    
    @IBAction func replay(_ sender: Any) {
    }
    

}
