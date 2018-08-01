//
//  OurTeamVC.swift
//  Procom18
//
//  Created by User on 28/07/2018.
//  Copyright © 2018 Sohaib. All rights reserved.
//

import UIKit

class OurTeamVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var teamMemberImages: [UIImage] = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!, UIImage(named: "6")!, UIImage(named: "7")!, UIImage(named: "8")!]
    
    var teamMemberNames: [String] = ["Bilal Munaf", "Muhammad Hamza", "Farrukh", "Yousuf Ashraf", "Faryal Khaskheli", "Mehar Ali", "Taha Hussain", "Sara Akhtar"]
    
    var teamMemberDesignations: [String] = ["President", "Vice President (EE)", "Vice President (BBA)", "General Secretary", "Director HR", "Tresurer", "Event Administrator", "Event Administrator"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        layout.minimumInteritemSpacing = 5
        
    }
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teamMemberNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamMemberCell", for: indexPath) as! teamViewCell
        
        cell.teamMemberImage.image = teamMemberImages[indexPath.item]
        cell.teamMemberName.text = teamMemberNames[indexPath.item]
        cell.teamMemberDesignation.text = teamMemberDesignations[indexPath.item]
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = #colorLiteral(red: 0.1215686275, green: 0.1921568627, blue: 0.3294117647, alpha: 1)
        cell.layer.cornerRadius = 10
        
        return cell
    }
    

}
