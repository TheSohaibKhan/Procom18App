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
    
    var ref: DatabaseReference!
    var refHandle: DatabaseHandle!
    
    @IBOutlet weak var tableView: UITableView!
    var competitions: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.ref = Database.database().reference()
        refHandle = ref.child("Competitions").observe(.value, with: { (snapshot) in
        let data = snapshot.value as! [String]
        for i in 0...data.count-1 {
            self.competitions.append("\(data[i])")
        }
//            print(self.competitions)
            self.tableView.reloadData()
        })
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(CompetitionViewCell.self, forCellReuseIdentifier: "competitionCell")
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return competitions.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCell(withIdentifier: "competitionCell", for: indexPath) as! CompetitionViewCell
      //  print(competitions)
        
            cell.competitionNameLabel.text = competitions[indexPath.row]
        return cell
    }
    
}
