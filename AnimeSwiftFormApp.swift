//
//  AnimeSwiftFormApp.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/4/23.
//

import SwiftUI
import CoreData

@main
struct AnimeSwiftFormApp: App {
    
    
    let viewContext = DataService.shared.persistentContainer.viewContext
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    //ContentView(animeDataService: AnimeDataService(context: context))

    var body: some Scene {
        WindowGroup {
            Home().frame(width: 808, height: 407).environment(\.managedObjectContext, viewContext).frame(minWidth: 808, idealWidth: 808, maxWidth: 808, minHeight: 407, idealHeight: 407, maxHeight: 407)
        }.windowResizability(WindowResizability.contentSize)
    }
}
