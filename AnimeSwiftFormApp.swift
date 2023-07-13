//
//  AnimeSwiftFormApp.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/4/23.
//

import SwiftUI
import SwiftData

@main
struct AnimeSwiftFormApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
