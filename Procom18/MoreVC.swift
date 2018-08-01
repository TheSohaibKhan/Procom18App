//
//  MoreVC.swift
//  Procom18
//
//  Created by User on 29/07/2018.
//  Copyright © 2018 Sohaib. All rights reserved.
//

import UIKit

class MoreVC: UIViewController {

    @IBOutlet weak var contactUsClicked: UIButton!
    @IBOutlet weak var ourTeamClicked: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactUsClicked.layer.borderWidth = 0.5
        ourTeamClicked.layer.borderWidth = 0.5
        contactUsClicked.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        ourTeamClicked.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }

    @IBAction func contactUsPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "contactUsViewController", sender: self)
        contactUsClicked.layer.borderWidth = 2
        contactUsClicked.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    @IBAction func ourTeamPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "ourTeamViewController", sender: self)
        ourTeamClicked.layer.borderWidth = 2
        ourTeamClicked.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
}
