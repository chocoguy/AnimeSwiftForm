//
//  Source+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Source {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Source> {
        return NSFetchRequest<Source>(entityName: "Source")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var anime: Anime?

}

extension Source : Identifiable {

}
