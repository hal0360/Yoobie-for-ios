//
//  MenuController.swift
//  Yoobie
//
//  Created by Ron Lu on 14/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class MenuController: RootController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        sideMenuConstraint.constant = -230
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.sideMenuConstraint.constant = 0
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func menu(_ sender: Any) {
        sideMenuConstraint.constant = -230
        UIView.animate(withDuration: 0.6, animations: {
            self.view.layoutIfNeeded()
        }, completion: { (true) in
            self.view.removeFromSuperview()
        })
    }
}
