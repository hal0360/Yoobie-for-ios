//
//  PrizeController.swift
//  Yoobie
//
//  Created by Ron Lu on 10/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class PrizeController: RootController {

    override func viewDidLoad() {
        super.viewDidLoad()
        index = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("prize appeared")
    }


}
