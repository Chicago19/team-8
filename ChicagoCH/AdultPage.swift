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
        
        ResourcesButton.backgroundColor = .clear
        ResourcesButton.layer.cornerRadius = 55
        ResourcesButton.layer.borderWidth = 1
        ResourcesButton.layer.borderColor = UIColor.black.cgColor
        
        SurveyButton.backgroundColor = .clear
        SurveyButton.layer.cornerRadius = 55
        SurveyButton.layer.borderWidth = 1
        SurveyButton.layer.borderColor = UIColor.black.cgColor
        
        AptmntButton.backgroundColor = .clear
        AptmntButton.layer.cornerRadius = 55
        AptmntButton.layer.borderWidth = 1
        AptmntButton.layer.borderColor = UIColor.black.cgColor
        
        CheckInButton.backgroundColor = .clear
        CheckInButton.layer.cornerRadius = 55
        CheckInButton.layer.borderWidth = 1
        CheckInButton.layer.borderColor = UIColor.black.cgColor

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
