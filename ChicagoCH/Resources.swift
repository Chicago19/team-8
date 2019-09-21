//
//  Resources.swift
//  ChicagoCH
//
//  Created by Aneesh Mysore on 9/21/19.
//  Copyright © 2019 Arnav Sarin. All rights reserved.
//
import UIKit
import WebKit
import PDFKit
import MessageUI


class Resources:  UIViewController, MFMailComposeViewControllerDelegate{
    @IBOutlet weak var PdfPopUP: UIView!
    @IBOutlet weak var ResourceNav: UIButton!
    @IBOutlet weak var ResourceTable: UITableView!
    
    let pdfs = ["Advocacy Parent Folder", "Coloring-Book", "Cyber Bullying", "Parent Handbook", "Free Chicago Events", "Information for Grandparents Spanish", "MedicalInformationSpanish"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResourceNav.setTitle("Resources", for: .normal)
        ResourceNav.titleLabel?.textColor = UIColor.darkGray
        ResourceNav.titleLabel?.font = UIFont(name: "AvenirNext-Demibold", size:20)
        ResourceNav.layer.borderWidth = 1
        ResourceNav.layer.borderColor = UIColor.darkGray.cgColor
        
        let url = Bundle.main.url(forResource: "MedicalInformationSpanish", withExtension: "pdf")
        print("inside button")
        if let url = url {
            let webView = WKWebView(frame: PdfPopUP.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            PdfPopUP.addSubview(webView)
        }
        ResourceTable.layer.borderWidth = 2.0;
        ResourceTable.layer.borderColor = UIColor.gray.cgColor
        
//        let blurEffect = UIBlurEffect(style: .extraLight)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.alpha = 0.5
//        blurEffectView.frame = self.view.frame
//        view.addSubview(blurEffectView)
        
        

    }
    

    
    @IBAction func ResourcePressed(_ sender: Any) {
        ResourceTable.isHidden = false
    }
    
    @IBAction func EmailPDFTOSelf(_ sender: Any) {

        let alert = UIAlertController(title: "Success", message: " You have sucessfully emailed it to yourself", preferredStyle: .alert)
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
    
}

extension Resources: UITableViewDataSource, UITableViewDelegate{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //sets a default value for each cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pdfs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourcesCell", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = pdfs[indexPath.row]
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.font = UIFont(name: "AvenirNext-Regular", size:20)
        cell.textLabel?.textColor = UIColor.darkGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ResourceNav.setTitle(pdfs[indexPath.row], for: .normal)
        ResourceTable.isHidden = true
        let url = Bundle.main.url(forResource: pdfs[indexPath.row], withExtension: "pdf")
        print("inside button")
        if let url = url {
            let webView = WKWebView(frame: PdfPopUP.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            PdfPopUP.addSubview(webView)

        ResourceTable.reloadData()
        
    }
}
}
