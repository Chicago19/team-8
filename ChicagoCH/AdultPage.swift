//
//  AdultPage.swift
//  ChicagoCH
//
//  Created by Haris Sohail on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//
import UIKit
import PDFKit
import WebKit

class AdultPage: UIViewController {
    
    //@IBOutlet weak var pdfViewer: UIView!
    
    @IBOutlet weak var ResourcesButton: UIButton!
    @IBOutlet weak var SurveyButton: UIButton!
    @IBOutlet weak var AptmntButton: UIButton!
    @IBOutlet weak var CheckInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResourcesButton.backgroundColor = UIColor.clear
        ResourcesButton.titleLabel?.textColor = UIColor.black
        ResourcesButton.layer.cornerRadius = 55
        ResourcesButton.layer.borderWidth = 5
        ResourcesButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:25)
        ResourcesButton.layer.borderColor = UIColor(red:164/255, green:195/255, blue:127/255, alpha: 1).cgColor
        
        SurveyButton.backgroundColor = UIColor.clear
        SurveyButton.titleLabel?.textColor = UIColor.black
        SurveyButton.layer.cornerRadius = 55
        SurveyButton.layer.borderWidth = 5
        SurveyButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:25)
        SurveyButton.layer.borderColor = UIColor(red:139/255, green:78/255, blue:163/255, alpha: 1).cgColor
        
        AptmntButton.backgroundColor = UIColor.clear
        AptmntButton.titleLabel?.textColor = UIColor.black
        AptmntButton.layer.cornerRadius = 55
        AptmntButton.layer.borderWidth = 5
        AptmntButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:25)
        AptmntButton.layer.borderColor = UIColor(red:139/255, green:78/255, blue:163/255, alpha: 1).cgColor
        
        CheckInButton.backgroundColor = UIColor.clear
        CheckInButton.titleLabel?.textColor = UIColor.black
        CheckInButton.layer.cornerRadius = 55
        CheckInButton.layer.borderWidth = 5
        CheckInButton.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size:25)
        CheckInButton.layer.borderColor = UIColor(red:164/255, green:195/255, blue:127/255, alpha: 1).cgColor
        

    }
    
    
    @IBAction func OpenUp(_ sender: Any) {
        let url = Bundle.main.url(forResource: "MedicalInformationSpanish", withExtension: "pdf")
        print("inside button")
        if let url = url {
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            //ResourcesButton.addSubview(webView)
        }
    }
    
  
}
