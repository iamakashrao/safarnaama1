//
//  ViewController.swift
//  safarnaama
//
//  Created by chitranjan on 17/02/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    let myRootRef = Firebase(url: "https://safarnaama.firebaseio.com")
    

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logintapped(sender: UIButton) {
        
        
        myRootRef.authUser(username.text, password: password.text,
            withCompletionBlock: { error, authData in
                if error != nil {
                      self.Customalert("Error- Please check your email and password ", message: "\(error)")
                    
                } else {
                    
                   self.performSegueWithIdentifier("logindone", sender: nil)
                }
        })

        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func signintapped(sender: UIButton) {
//        
//        myRootRef.createUser(username.text, password: password.text,
//            withValueCompletionBlock: { error, result in
//                if error != nil {
//                    
//                    
//                    
//                    self.Customalert("error in creating account", message: "\(error)")
//                    
//                    
//                } else {
//                    let uid = result["uid"] as? String
//                    print("Successfully created user account with uid: \(uid)")
//                    self.Customalert("Success", message: "please login using your email and password")
//                }
//        })
//    }

    func Customalert(title : String,message : String){
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okaction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
        self.dismissViewControllerAnimated(true, completion:nil)
        }
        
        ac.addAction(okaction)
        self.presentViewController(ac, animated: true, completion: nil)
    }
    
    
}

