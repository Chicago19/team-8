//
//  KidsPag.swift
//  ChicagoCH
//
//  Created by Arnav Sarin on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//


import UIKit

//class KidsPag: UIViewController{
//    @IBOutlet var gameButtons: [UIButton]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//
//}
class KidsPag: UIViewController {

    @IBOutlet weak var DropDownMenu: UIButton!
    @IBOutlet weak var Categories: UITableView!
    @IBOutlet weak var GameIcons: UICollectionView!
    let games = ["Infant Toddler Games", "Preschool", "School Age", "Teen", "Sensory/Relaxation"]
    var gamesMap = ["" : [], "Infant Toddler Games": ["elmosABCLite.png", "babyDrums.jpg", "bubblePaintPop.jpg"], "Preschool":["docMcStuffinsBabyNursery.jpg", "docMcStuffinsColoring.jpg", "barbieDreamHouse.jpg", "flowFree.jpg"], "School Age": ["subwaySurfer.jpg", "nailSalon.jpg", "sonicDash.jpg", "ticTacToe.jpg", "hangman.jpg", "bikeRace.jpg", "flowFree.jpg"], "Teen":["canYouEscape.jpg", "helixJump.jpg", "hangman.jpg", "wordSearch.jpg", "coloringBook.jpg", "flowFree.jpg"], "Sensory/Relaxation": ["heatPad.jpg", "lavaLamp.jpg", "goParticles.jpg", "glowLamp.jpg", "relaxMelodies.jpg", "magicFingers.jpg"]]
    
    var savedGameName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DropDownMenu.setTitle("Game Categories", for: .normal)
        DropDownMenu.titleLabel?.font = UIFont(name: "AvenirNext-Demibold", size:50)
        DropDownMenu.layer.borderWidth = 1
        DropDownMenu.layer.borderColor = UIColor.black.cgColor
//        DropDownMenu.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        DropDownMenu.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//        DropDownMenu.layer.shadowOpacity = 1.0
//        DropDownMenu.layer.shadowRadius = 2.0
//        DropDownMenu.layer.masksToBounds = false
//        DropDownMenu.layer.cornerRadius = 0.0
        Categories.isHidden = true
        

    }

    @IBAction func TableViewHiding(_ sender: Any) {
        Categories.isHidden = false
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCatCell", for: indexPath) as! GameTableViewCell
            cell.textLabel?.text = games[indexPath.row]
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont(name: "AvenirNext-Regular", size:40)
             return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DropDownMenu.setTitle(games[indexPath.row], for: .normal)
        Categories.isHidden = true
        savedGameName = games[indexPath.row]
        GameIcons.reloadData()
        
    }
}



extension KidsPag: UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: "GameName", for: indexPath) as! GameNameCell
       
        let str = gamesMap[savedGameName]![indexPath.row]
        cell.imgGameName.image = UIImage(named: str)
        //cell.imgGameName.selectedImage = UIImage(named: str)
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(gamesMap[savedGameName]!.count)
        return gamesMap[savedGameName]!.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//        if let cell = collectionView.cellForItem(at: indexPath){
//            cell.contentView.backgroundColor = UIColor.lightGray
//        }
//        boatObject = boatList[indexPath.row]
        //TODO: Select icon to go to came
        
        
    }
    
    
    //    //sets a default value for each cell height
    //    func collec(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return 280
    //    }
}
