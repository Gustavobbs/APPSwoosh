//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Gustavo Buoro Branco de Souza on 26/03/20.
//  Copyright © 2020 Gustavo Buoro Branco de Souza. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
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
