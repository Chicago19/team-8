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
    
//    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.gestureAction))
//    swipeRight.direction = UISwipeGestureRecognizer.Direction.right
//    self.view.addGestureRecognizer(swipeRight)
}

override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
}
    
//    @objc func gestureAction(gesture: UIGestureRecognizer) {
//    if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//        switch swipeGesture.direction {
//            case UISwipeGestureRecognizer.Direction.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizer.Direction.left:
//                print("Swiped left")
//            case UISwipeGestureRecognizer.Direction.down:
//                print("Swiped down")
//            case UISwipeGestureRecognizer.Direction.up:
//                print("Swiped up")
//            default:
//                break
//            }
//        }
//    }
}
