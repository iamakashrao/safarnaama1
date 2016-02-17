//
//  SecViewController.swift
//  safarnaama
//
//  Created by chitranjan on 17/02/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import CoreData
import MapKit

class SecViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var storiesarray:[Story] = []

    override func viewDidLoad() {
        super.viewDidLoad()
datafromCoredata()        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
      
        datafromCoredata()
    }
    
    func datafromCoredata(){
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        
        let request = NSFetchRequest(entityName: "Story")
        
        var result: [AnyObject]?
        
        do{
        result = try context.executeFetchRequest(request)
        }catch{
            print("error in fetching")
        }
        
        if result != nil{
            
            storiesarray = result as! [Story]
        }
        
        self.tableview.reloadData()
        
    }
   
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return storiesarray.count
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailview"{
            
            let dvc = segue.destinationViewController as! detailViewController
            
            
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("detailview", sender: nil)
        
        
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! StroryTableViewCell
        let tempobject = storiesarray[indexPath.row]
        cell.story.text = tempobject.story
        cell.storytitile.text = tempobject.title
        
        cell.StoryLocation.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: (tempobject.lattitude?.doubleValue)!, longitude: (tempobject.longitude?.doubleValue)!), span: MKCoordinateSpan(latitudeDelta: (tempobject.lattitudeDelta?.doubleValue)!, longitudeDelta: (tempobject.longitudeDelta?.doubleValue)!)), animated: true)
        cell.storysnap.image = UIImage(named: "1.jpg")
        return cell
    }
}
