//
//  Episode+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Episode {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Episode> {
        return NSFetchRequest<Episode>(entityName: "Episode")
    }

    @NSManaged public var animee: UUID?
    @NSManaged public var episodeNum: Int16
    @NSManaged public var episodeStatus: Int16
    @NSManaged public var id: UUID?
    @NSManaged public var anime: Anime?

}

extension Episode : Identifiable {

}
