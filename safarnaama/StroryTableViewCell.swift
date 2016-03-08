//
//  StroryTableViewCell.swift
//  safarnaama
//
//  Created by chitranjan on 17/02/16.
//  Copyright © 2016 void. All rights reserved.
//

import UIKit
import MapKit

class StroryTableViewCell: UITableViewCell {

    @IBOutlet weak var storytitile: UILabel!
    
    @IBOutlet weak var story: UILabel!

    @IBOutlet weak var StoryLocation: MKMapView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
    StoryLocation.layer.cornerRadius = StoryLocation.frame.size.width/10
    StoryLocation.clipsToBounds = true
        
        StoryLocation.layer.borderWidth = 4
        StoryLocation.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        story.layer.cornerRadius = 2
        story.layer.borderWidth = 2
        story.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        
    }
    
}


