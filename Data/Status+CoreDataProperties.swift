//
//  Status+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Status {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Status> {
        return NSFetchRequest<Status>(entityName: "Status")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var anime: Anime?

}

extension Status : Identifiable {

}
