//
//  ViewAnime.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/16/23.
//

import SwiftUI

struct ViewAnime: View {
    
    @State private var _ageRating: String = "PG 13"
    @State private var _desc: String = "Corrupt polticians, frenzied nationalists, and other warmongering forces constantly jeopardize the thin veneer of peace between neighboring countries Ostania and Westalis In spite of their plots, renowned spy and master of disguise \"Twilight\" fulfills dangerous missions one after another in the hope that no child will have to experience the horrors of war.\n\nIn the bustling Ostanian city of Berlint, Twilight dons the alias of \"Loid Forger,\" an esteemed psychiatrist. However, his true intention is to gather intelligence on prominent politician Donovan Desmond, who only appears rarely in public at his sons' school: the prestigious Eden Academy. Enlisting the help of unmarried city hall clerk Yor Briar to act as his wife and adopting the curious six-year-old orphan Anya as his daughter, Loid enacts his master plan. He will enroll Anya in Eden Academy, where Loid hopes she will excel and give him the opportunity to meet Donovan without arousing suspicion. \n\nUnfortunately for Loid, even a man of his talents has trouble playing the figure of a loving father and husband. And just like Loid is hiding his true identity, Yor—who is an underground assassin known as \"Thorn Princess\"—and Anya—an esper who can read people's minds—have no plans to disclose their own secrets either. Although this picture-perfect family is founded on deception, the Forgers gradually come to understand that the love they share for one another trumps all else.\n\n[Written by MAL Rewrite] "
    @State private var _endAir: Date = Date.now
    @State private var _episodeCount: Int = 12
    @State private var _genre: String = "Action | Comedy | Shounen"
    @State private var _lastWatched: Int = 4
    @State private var _malRanking: Int = 81
    @State private var _malScore: Float = 8.61
    @State private var _mediaType: String = "TV"
    @State private var _poster: String = "https://cdn.myanimelist.net/images/anime/1441/122795.jpg"
    @State private var _rating: Int = 7
    @State private var _season: String = "Spring"
    @State private var _source: String = "Manga"
    @State private var _startAir: Date = Date.now
    @State private var _startWatch: Date = Date.now
    @State private var _stopWatch: Date = Date.now
    @State private var _status: String = "Currently Watching"
    @State private var _studio: String = "Wit Studio | CloverWorks"
    @State private var _title: String = "SpyXFamily"
    
    var body: some View {
        HStack{
            VStack{
                Text("Episode \(String(_lastWatched))/\(String(_episodeCount)) | \(_status)")
                Divider()
                Group{
                    HStack{
                        Text("Season:")
                        Text("\(_season) - \(_startAir.formatted(Date.FormatStyle().year(.defaultDigits)))")
                    }
                    HStack{
                        Text("Started Airing:")
                        Text("\(_startAir.formatted(date: .numeric, time: .omitted))")
                    }
                    HStack{
                        Text("Ended Airing:")
                        Text("\(_endAir.formatted(date: .numeric, time: .omitted))")
                    }
                    HStack{
                        Text("MAL Score:")
                        Text("\(String(_malScore))")
                    }
                    HStack{
                        Text("Your Score:")
                        Text("\(String(_rating))")
                    }
                    HStack{
                        Text("MAL Rank:")
                        Text("\(String(_malRanking))")
                    }
                    HStack{
                        Text("Rated:")
                        Text("\(_ageRating)")
                    }
                    HStack{
                        Text("Status:")
                        Text("Finished Airing")
                    }
                    HStack{
                        Text("Status:")
                        Text("Finished Airing")
                    }
                    HStack{
                        Text("Source:")
                        Text("\(_source)")
                    }
                }
                Group{
                    HStack{
                        Text("Studios:")
                        Text("\(_studio)")
                    }
                    HStack{
                        Text("Genres:")
                        Text("\(_genre)")
                    }
                }
            }
            VStack{

            }
        }
    }
}

#Preview {
    ViewAnime().frame(width: 808.0, height: 407.0)
}
