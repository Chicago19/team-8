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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OpenUp(_ sender: Any) {
        let url = Bundle.main.url(forResource: "MedicalInformationSpanish", withExtension: "pdf")
        if let url = url {
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            view.addSubview(webView)
        }
    }
    
    
    
}
