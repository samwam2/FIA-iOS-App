//
//  FirstViewController.swift
//  FrickImpactAcademy
//
//  Created by ShowalterS18 on 10/16/17.
//  Copyright © 2017 samShowalter. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {
    //All Vars and lets
    @IBOutlet var eventView: UIStackView!
    let ref = FIRDatabase.database().reference(withPath: "News1")
    
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


}

