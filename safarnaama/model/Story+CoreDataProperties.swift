//
//  Story+CoreDataProperties.swift
//  
//
//  Created by chitranjan on 17/02/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Story {

    @NSManaged var title: String?
    @NSManaged var story: String?
    @NSManaged var lattitude: NSNumber?
    @NSManaged var longitude: NSNumber?
    @NSManaged var lattitudeDelta: NSNumber?
    @NSManaged var longitudeDelta: NSNumber?
    @NSManaged var image: NSData?

}
