//
//  AgeRating+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension AgeRating {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AgeRating> {
        return NSFetchRequest<AgeRating>(entityName: "AgeRating")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var anime: Anime?

}

extension AgeRating : Identifiable {

}
