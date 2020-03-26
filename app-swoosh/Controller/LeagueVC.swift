//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Gustavo Buoro Branco de Souza on 26/03/20.
//  Copyright © 2020 Gustavo Buoro Branco de Souza. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextBtn.isEnabled = false
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague("womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague("mens")
    }
    
    @IBAction func onCoopTapped(_ sender: Any) {
        selectLeague("coop")
    }
    
    func selectLeague(_ leagueType: String!) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // Always called before destination's ViewDidLoad
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
