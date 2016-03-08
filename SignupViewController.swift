//
//  SignupViewController.swift
//  safarnaama
//
//  Created by chitranjan on 08/03/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    let myRootRef = Firebase(url: "https://safarnaama.firebaseio.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signupTapped(sender: UIButton) {
        myRootRef.createUser(username.text, password: password.text,
            withValueCompletionBlock: { error, result in
                if error != nil {
                    
                    
                    
                    self.Customalert("Error in creating account", message: "\(error)")
                    
                    
                } else {
                   
                    
                    let ac = UIAlertController(title: "sucess", message: "sucess", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    let okaction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
                        
                        self.performSegueWithIdentifier("signupdone", sender: nil)
                       
                    }
                    
                    ac.addAction(okaction)
                    self.presentViewController(ac, animated: true, completion: nil)

                }
        })
        
    }
    func Customalert(title : String,message : String){
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okaction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default) { (action:UIAlertAction) -> Void in
            self.dismissViewControllerAnimated(true, completion:nil)
        }
        
        ac.addAction(okaction)
        self.presentViewController(ac, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
