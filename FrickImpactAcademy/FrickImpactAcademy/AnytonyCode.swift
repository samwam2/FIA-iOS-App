//
//  SecondViewController.swift
//  FrickImpactAcademy
//
//  Created by ShowalterS18 on 10/16/17.
//  Copyright © 2017 samShowalter. All rights reserved.
//

import UIKit
import WebKit

class AnthonyViewController: UIViewController, WKUIDelegate {
    
    //var webView = WKWebView()
    var webView: WKWebView!
    
    override func loadView() {
        let webViewCofig = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webViewCofig)
        webView.uiDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URLDirectory = URL(string: "wwww.apple.com")
        let requestWeb = URLRequest(url: URLDirectory!)
        webView.load(requestWeb)
     
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hides the status bar from the user
    override var prefersStatusBarHidden: Bool {
        return true
    }
}



