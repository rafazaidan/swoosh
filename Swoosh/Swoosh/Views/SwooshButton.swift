//
//  SwooshButton.swift
//  Swoosh
//
//  Created by Rafa Zaidan on 30/07/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class SwooshButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Setting the border width and border color of the button
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.white.cgColor
    }
    
}
