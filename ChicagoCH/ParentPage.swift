//
//  ParentPage.swift
//  ChicagoCH
//
//  Created by Haris Sohail on 9/20/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import Foundation
import UIKit
import PDFKit
import WebKit

class ParentPage: UIViewController {
    

    //@IBOutlet var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//
////        if let path = Bundle.main.path(forResource: "MedicalInformationSpanish", ofType: "pdf") {
////            if let pdfDocument = PDFDocument(url: URL(fileURLWithPath: path)) {
////                pdfView.displayMode = .singlePageContinuous
////                pdfView.autoScales = true
////                pdfView.displayDirection = .vertical
////                pdfView.document = pdfDocument
////            }
////        }
//
//        let pdfView = PDFView(frame: self.view.bounds)
//        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.view.addSubview(pdfView)
//
//        // Fit content in PDFView.
//        pdfView.autoScales = true
//
//        // Load Sample.pdf file from app bundle.
//        let fileURL = Bundle.main.url(forResource: "~/Desktop/MedicalInformationSpanish", withExtension: "pdf")
//        pdfView.document = PDFDocument(url: fileURL!)
//
//
//
//
//
        
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
