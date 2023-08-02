//
//  Season+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Season {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Season> {
        return NSFetchRequest<Season>(entityName: "Season")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var anime: Anime?

}

extension Season : Identifiable {

}
