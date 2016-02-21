//
//  detailViewController.swift
//  safarnaama
//
//  Created by chitranjan on 22/02/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import MapKit


class detailViewController: UIViewController {

    @IBOutlet weak var story: UILabel!
    @IBOutlet weak var mystory: MKMapView!
    @IBOutlet weak var titleofthestory: UILabel!
    
    
    let tempstory :String = ""
    let temptitle:String  = ""
    let templattitude:CLLocationDegrees!
    let templattitudedelta:CLLocationDegrees!
    let templongitude:CLLocationDegrees = 0.01
    let templongitudedelta:CLLocationDegrees = 0.01
    
    override func viewDidLoad() {
        super.viewDidLoad()

        story.text = tempstory
        titleofthestory.text = temptitle
        
        mystory.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: templattitude, longitude: templongitude), span: MKCoordinateSpan(latitudeDelta: templattitudedelta, longitudeDelta: templongitudedelta)), animated: true)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
