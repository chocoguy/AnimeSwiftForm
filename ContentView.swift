//
//  ContentView.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/4/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
//    @ObservedObject private var animeDataService: AnimeDataService
//    
//    init(animeDataService: AnimeDataService){
//        self.animeDataService = animeDataService
//    }
    
    var body: some View {
        Text("Select an item")
        Button{
            //animeDataService.getAnime()
        } label: {
            Label("see", systemImage: "trash")
        }
    }
}

private func deleteItems() {
    
}


