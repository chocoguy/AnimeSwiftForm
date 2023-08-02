//
//  MediaType+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension MediaType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MediaType> {
        return NSFetchRequest<MediaType>(entityName: "MediaType")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var anime: Anime?

}

extension MediaType : Identifiable {

}
