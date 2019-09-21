//
//  ViewController.swift
//  ChicagoCH
//
//  Created by Arnav Sarin on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var kidsButton: UIButton!
    @IBOutlet weak var parentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        parentButton.layer.cornerRadius = 75
        //parentButton.layer.borderWidth = 1
        //parentButton.layer.borderColor = UIColor.white.cgColor
        parentButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:40
        )
        
        kidsButton.layer.cornerRadius = 75
        //kidsButton.layer.borderWidth = 1
        //kidsButton.layer.borderColor = UIColor.white.cgColor
        kidsButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:40)
        
        
        //parentButton.titleLabel!.font = UIFont(name: "Times New Roman", size: 25)
        
        //kidsButton.titleLabel!.font = UIFont(name: "Times New Roman", size: 25)
        
        //passLock.isHidden = true
        
        
    }
    
    @IBAction func InsertPaswd(_ sender: Any) {
        //passLock.isHidden = false
        
        //        parentButton.isHidden = true
        //        kidsButton.isHidden = true
    }


}

