//
//  NewStoryViewController.swift
//  safarnaama
//
//  Created by chitranjan on 17/02/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import MapKit
import CoreData


class NewStoryViewController: UIViewController {
    @IBOutlet weak var mapview: MKMapView!

    @IBOutlet weak var textfield: UITextView!
    
    @IBOutlet weak var titleOfStory: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addtoCoreData(sender: UIBarButtonItem) {
        
        addData()
        
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func cancelTapped(sender: UIBarButtonItem) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    func addData(){
        
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let Storyobj = NSEntityDescription.insertNewObjectForEntityForName("Story", inManagedObjectContext: context) as! Story
        Storyobj.lattitude = self.mapview.region.center.latitude
        Storyobj.longitude = self.mapview.region.center.longitude
        Storyobj.lattitudeDelta = self.mapview.region.span.latitudeDelta
        Storyobj.longitudeDelta = self.mapview.region.span.longitudeDelta
        Storyobj.title = titleOfStory.text
        Storyobj.story = textfield.text
        
        do {
            try context.save()
        }catch{
            print("error in saving")
        }
        
    }
    
}
