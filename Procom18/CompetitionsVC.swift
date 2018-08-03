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
            self.tableView.reloadData()
        })
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return competitions.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCell(withIdentifier: "competitionCell", for: indexPath)
        cell.textLabel?.adjustsFontSizeToFitWidth = true
        cell.textLabel?.textColor = #colorLiteral(red: 0.1392937005, green: 0.4068886936, blue: 0.559953928, alpha: 1)
        cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.textLabel?.text = competitions[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    
}
