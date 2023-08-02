//
//  Anime+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Anime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Anime> {
        return NSFetchRequest<Anime>(entityName: "Anime")
    }

    @NSManaged public var ageRating: UUID?
    @NSManaged public var desc: String?
    @NSManaged public var endAir: Date?
    @NSManaged public var episodeCount: Int16
    @NSManaged public var genre: String?
    @NSManaged public var id: UUID?
    @NSManaged public var lastWatched: Int16
    @NSManaged public var malRanking: Int32
    @NSManaged public var malScore: Float
    @NSManaged public var mediaType: UUID?
    @NSManaged public var poster: String?
    @NSManaged public var rating: Int16
    @NSManaged public var review: String?
    @NSManaged public var season: UUID?
    @NSManaged public var source: UUID?
    @NSManaged public var startAir: Date?
    @NSManaged public var startWatch: Date?
    @NSManaged public var status: UUID?
    @NSManaged public var stopWatch: Date?
    @NSManaged public var studio: String?
    @NSManaged public var title: String?
    @NSManaged public var ageRatings: AgeRating?
    @NSManaged public var episodes: Episode?
    @NSManaged public var mediaTypes: MediaType?
    @NSManaged public var seasons: Season?
    @NSManaged public var sources: Source?
    @NSManaged public var statuses: Status?

}


