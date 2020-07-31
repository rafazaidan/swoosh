//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Rafa Zaidan on 31/07/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: SwooshButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isEnabled = false
        
        player = Player()
    }
    
    
    // Creating the actions for the three different leagues
    
    @IBAction func mensButtonTapped() {
        handleLeagueSelection(league: "mens")
    }
    
    @IBAction func womensButtonTapped() {
        handleLeagueSelection(league: "womens")
    }
    
    @IBAction func coedButtonTapped() {
        handleLeagueSelection(league: "coed")
    }
    
    
    @IBAction func nextButtonTapped() {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    // Method for handling the selection of a particular league
    func handleLeagueSelection(league: String) {
        player.desiredLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Passing the data between LeagueVC and handing it over to the SkillVC
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        
    }
    
}
