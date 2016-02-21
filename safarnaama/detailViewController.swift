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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
