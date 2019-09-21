//
//  KidsPag.swift
//  ChicagoCH
//
//  Created by Arnav Sarin on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//


import UIKit
class KidsPag: UIViewController {
    
    
    @IBOutlet weak var Categories: UITableView!
     let games = ["Action","Adventure","AR Games","Board", "Card", "Casino", "Casual", "Family", "Indie", "Kids", "Music", "Puzzle", "Racing", "Role Playing", "Simulation", "Sports", "Strategy", "Trivia, Word"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    
    
    
    
}
extension KidsPag: UITableViewDataSource, UITableViewDelegate{
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
return 1
    }
    
    //sets a default value for each cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCatCell", for: indexPath) as! UITableViewCell
            cell.textLabel?.text = games[indexPath.row]
           /* cell.textLabel?.text = friendRequestList[indexPath.row] as? String
            cell.textLabel?.font = UIFont(name: "AvenirNext-Regular", size:14)
            cell.textLabel?.textColor = UIColor.black
            */
            
            
            return cell
        
        //}
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
