//
//  Survey.swift
//  ChicagoCH
//
//  Created by Aneesh Mysore on 9/21/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//

import UIKit
import WebKit
//override func viewDidLoad() {
//super.viewDidLoad()
class Survey: UIViewController, WKNavigationDelegate{
//var webView: WKWebView!
  
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var SurveyView: UIView!
    @IBOutlet weak var webViewHeightConstraint: NSLayoutConstraint!
    
override func viewDidLoad(){
    super.viewDidLoad()
    let url = URL(string: "https://qualtrics.com")!
    let urlRequest = URLRequest(url: url)
    webView.load(urlRequest)
}


override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
}
}
