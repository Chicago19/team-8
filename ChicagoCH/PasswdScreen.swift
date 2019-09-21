//
//  PasswdScreen.swift
//  ChicagoCH
//
//  Created by Aneesh Mysore on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import Foundation
import UIKit

class PasswdScreen: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var BlurryScreen: UIView!
    @IBOutlet weak var enteredPassword: UITextField!
    @IBAction func backanimation(_ sender: Any) {
        performSegue(withIdentifier: "backFromPass", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredPassword.delegate = self
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.3
        blurEffectView.frame = self.view.frame
        BlurryScreen.addSubview(blurEffectView)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.text == "1111")
        {
            textField.resignFirstResponder()
            print("Success")
            //self.view.endEditing(true)
          performSegue(withIdentifier: "PasswordToAdult", sender: self)
            // Passwords do not match. Display alert message and return
            return true
        } else {
            print("failure")
            textField.text = ""
            let alert = UIAlertController(title: "Incorrect PIN", message: "Please Try Again", preferredStyle: .alert)
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
            return false
        }
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("IN touches began")
//        enteredPassword.resignFirstResponder()
//    }
}

extension ViewController : UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField)-> Bool {
            print("IN here")
            textField.resignFirstResponder()
            return true
        }
}
   

