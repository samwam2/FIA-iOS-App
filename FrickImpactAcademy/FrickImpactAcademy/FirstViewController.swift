//
//  FirstViewController.swift
//  FrickImpactAcademy
//
//  Created by ShowalterS18 on 10/16/17.
//  Copyright © 2017 samShowalter. All rights reserved.
//

import UIKit
//import Firebase
import SwiftInstagram

//import FirebaseCoreDiagnostics

class FirstViewController: UIViewController {
    //All Vars and lets
    let api = Instagram.shared
    public let images = Instagram.
    
    @IBOutlet var image1: UIImageView!
    
    @IBOutlet var image2: UIImageView!
    //var DBref: DatabaseReference!
    //DBref: Database.ref
    
    func getInstagramStuff() {
        
        api.recentMedia(fromUser: "frickimpactacad", count: 5, success: { mediaList in
            // Do your stuff here ...
//            image1.image = api.
            api.ima
        }, failure: { error in
            print(error.localizedDescription)
        })
    }
    
    
    @IBOutlet var eventView: UIStackView!
    //let ref = FIRDatabase.database().reference(withPath: "News1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        InstagramUser.init(from: userActivity)
        
        Instagram.shared.storeAccessToken(AT)
        
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

