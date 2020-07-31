//
//  SkillVC.swift
//  Swoosh
//
//  Created by Rafa Zaidan on 31/07/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        print("Selected league: \(player.desiredLeague)")
    }

}
