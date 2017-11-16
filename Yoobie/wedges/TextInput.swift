//
//  TextInput.swift
//  Yoobie
//
//  Created by Ron Lu on 15/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class TextInput: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        //self.addTarget(self, action: "formatText", for: .editingChanged)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       // self.addTarget(self, action: "formatText", for: .editingChanged)
    }
    
    func formatText() {
        // Edit self.text here
    }

}
