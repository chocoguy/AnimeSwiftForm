//
//  SampleAnime.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/15/23.
//

import Foundation

struct AnimeModel: Identifiable, Hashable {
    
    
    var episodeCount: Int
    var lastWatched: Int
    var episodes: Int
    var season: String
    var status: String
    var title: String
    var id: Int
    
    //var isCapitalInt: Int { isCapital ? 0 : 1 }
        
    static var animes: [AnimeModel]{
        [
            AnimeModel(episodeCount: 12, lastWatched: 4, episodes: 12, season: "Spring - 2023", status: "Watching", title: "Oshi no Ko", id: 1),
            AnimeModel(episodeCount: 24, lastWatched: 2, episodes: 24, season: "Fall - 2007", status: "Watching", title: "Wangan Midnight", id: 2),
            AnimeModel(episodeCount: 12, lastWatched: 6, episodes: 12, season: "Summer - 2015", status: "Stalled", title: "Himouto! Umaru-Chan", id: 4),
            AnimeModel(episodeCount: 24, lastWatched: 16, episodes: 24, season: "Spring - 2009", status: "Watching", title: "The Melachony of Haruhi Suzumiya", id: 3)
        ]
    }
    
}

