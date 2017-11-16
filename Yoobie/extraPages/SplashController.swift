//
//  SplashController.swift
//  Yoobie
//
//  Created by Ron Lu on 14/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class SplashController: RootController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            Kit.goTo(contex: self, id: "MainPage")
        }
    }
}
