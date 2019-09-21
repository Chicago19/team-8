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
var webView: WKWebView!
  
    
override func viewDidLoad(){
    super.viewDidLoad()
    let url = URL(string: "https://qualtrics.com")!
    webView.load(URLRequest(url: url))
    
}


override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
}
}
