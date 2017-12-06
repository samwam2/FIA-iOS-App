//
//  calendarView.swift
//  FrickImpactAcademy
//
//  Created by ShowalterS18 on 12/1/17.
//  Copyright © 2017 samShowalter. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class calendarView: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string: "https://www.ousd.org/domain/3540")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
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
