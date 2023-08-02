//
//  Schedule+CoreDataProperties.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/31/23.
//
//

import Foundation
import CoreData


extension Schedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Schedule> {
        return NSFetchRequest<Schedule>(entityName: "Schedule")
    }

    @NSManaged public var count: Int16
    @NSManaged public var fri: UUID?
    @NSManaged public var id: UUID?
    @NSManaged public var isCurrent: Bool
    @NSManaged public var mon: UUID?
    @NSManaged public var sat: UUID?
    @NSManaged public var sun: UUID?
    @NSManaged public var thu: UUID?
    @NSManaged public var title: String?
    @NSManaged public var tue: UUID?
    @NSManaged public var wed: UUID?

}

extension Schedule : Identifiable {

}
