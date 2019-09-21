//
//  ViewController.swift
//  ChicagoCH
//
//  Created by Arnav Sarin on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    @IBAction func openPDF(_ sender: Any) {
        print("hello")
        let url = Bundle.main.url(forResource: "MedicalInformationSpanish", withExtension: "pdf")

        if let url = url {
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            view.addSubview(webView)
        }
    }
    
    
    
}

