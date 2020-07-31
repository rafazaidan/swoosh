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
    @IBOutlet weak var mensButton: SwooshButton!
    @IBOutlet weak var womensButton: SwooshButton!
    @IBOutlet weak var coedButton: SwooshButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isEnabled = false

        player = Player()
    }
    
    
    // Creating the actions for the three different leagues
    
    @IBAction func mensButtonTapped() {
        handleLeagueSelection(league: .mens)
    }
    
    @IBAction func womensButtonTapped() {
        handleLeagueSelection(league: .womens)
    }
    
    @IBAction func coedButtonTapped() {
        handleLeagueSelection(league: .coed)
    }
    
    @IBAction func nextButtonTapped() {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    // Method for handling the selection of a particular league
    
    func handleLeagueSelection(league: League) {
        player.desiredLeague = league
        nextButton.isEnabled = true
        
        // TODO: - Fix the league buttons when highlighted
        /* switch league {
            
        case .mens:
            self.mensButton.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
            self.mensButton.setTitleColor(.black, for: .selected)
            
        case .womens:
            self.womensButton.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
            self.womensButton.setTitleColor(.black, for: .selected)
            
        case .coed:
            self.coedButton.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
            self.coedButton.setTitleColor(.black, for: .selected)
        } */
        
    }
    
}
