//
//  parnentViewController.swift
//  FrickImpactAcademy
//
//  Created by ShowalterS18 on 12/4/17.
//  Copyright © 2017 samShowalter. All rights reserved.
//

import Foundation
import UIKit

class parnentViewController: UIViewController {
  
   
    @IBAction func launchJupiter(_ sender: Any) {
  open(scheme: "https://login.jupitered.com/login/")
        
    }
    
    
    @IBAction func launchhero(_ sender: Any) {
    open(scheme: "https://access.heropowered.com")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hides the status bar from the user
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func open(scheme: String) {
        if let url = URL(string: scheme) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:],
                                          completionHandler: {
                                            (success) in
                                            print("Open \(scheme): \(success)")
                })
            } else {
                let success = UIApplication.shared.openURL(url)
                print("Open \(scheme): \(success)")
            }
        }
    }

    
    
}
