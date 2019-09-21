//
//  CheckInPage.swift
//  ChicagoCH
//
//  Created by Aneesh Mysore on 9/21/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import UIKit

class CheckInPage: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var SigBox: UITextField!
    @IBOutlet weak var TimeBox: UITextField!
    @IBOutlet weak var DateBox: UITextField!
    @IBOutlet weak var ChildNameBox: UITextField!
    @IBOutlet weak var CareTakerNameBox: UITextField!
    
    @IBAction func Submitting(_ sender: Any) {
        let alert = UIAlertController(title: "Thank you for your patience", message: "The information will be submitted to a database", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        SigBox.layer.borderWidth = 1
        //SigBox.layer.cornerRadius = 15.0
        SigBox.layer.borderColor = UIColor.lightGray.cgColor
        SigBox.delegate = self
        
        TimeBox.layer.borderWidth = 1
        //TimeBox.layer.cornerRadius = 15.0
        TimeBox.layer.borderColor = UIColor.lightGray.cgColor
        TimeBox.delegate = self
        
        DateBox.layer.borderWidth = 1
        //DateBox.layer.cornerRadius = 15.0
        DateBox.layer.borderColor = UIColor.lightGray.cgColor
        DateBox.delegate = self
        
        ChildNameBox.layer.borderWidth = 1
        //ChildNameBox.layer.cornerRadius = 15.0
        ChildNameBox.layer.borderColor = UIColor.lightGray.cgColor
        ChildNameBox.delegate = self
        
        CareTakerNameBox.layer.borderWidth = 1
        //CareTakerNameBox.layer.cornerRadius = 15.0
        CareTakerNameBox.layer.borderColor = UIColor.lightGray.cgColor
        CareTakerNameBox.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

