//
//  CompetitionsVC.swift
//  Procom18
//
//  Created by User on 29/07/2018.
//  Copyright © 2018 Sohaib. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class CompetitionsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var competitions: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "competitionCell", for: indexPath) as! CompetitionViewCell
        
        return cell
    }
    
    

}
