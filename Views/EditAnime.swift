//
//  EditAnime.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/20/23.
//

import SwiftUI

struct EditAnime: View {
    
    @State private var _ageRating: String = "PG 13"
    @State private var _desc: String = "Corrupt polticians, frenzied nationalists, and other warmongering forces constantly jeopardize the thin veneer of peace between neighboring countries Ostania and Westalis In spite of their plots, renowned spy and master of disguise \"Twilight\" fulfills dangerous missions one after another in the hope that no child will have to experience the horrors of war.\n\nIn the bustling Ostanian city of Berlint, Twilight dons the alias of \"Loid Forger,\" an esteemed psychiatrist. However, his true intention is to gather intelligence on prominent politician Donovan Desmond, who only appears rarely in public at his sons' school: the prestigious Eden Academy. Enlisting the help of unmarried city hall clerk Yor Briar to act as his wife and adopting the curious six-year-old orphan Anya as his daughter, Loid enacts his master plan. He will enroll Anya in Eden Academy, where Loid hopes she will excel and give him the opportunity to meet Donovan without arousing suspicion. \n\nUnfortunately for Loid, even a man of his talents has trouble playing the figure of a loving father and husband. And just like Loid is hiding his true identity, Yor—who is an underground assassin known as \"Thorn Princess\"—and Anya—an esper who can read people's minds—have no plans to disclose their own secrets either. Although this picture-perfect family is founded on deception, the Forgers gradually come to understand that the love they share for one another trumps all else.\n\n[Written by MAL Rewrite] "
    @State private var _endAir: Date = Date.now
    @State private var _episodeCount: Int = 12
    @State private var _genre: String = "Action | Comedy | Shounen"
    @State private var _lastWatched: Int = 4
    @State private var _malRanking: Int = 81
    @State private var _malScore: Float = 8.61
    @State private var _mediaType: String = "TV"
    //https://cdn.myanimelist.net/images/anime/1441/122795.jpg
    @State private var _poster: String = ""
    @State private var _rating: Int = 7
    @State private var _season: String = "Spring"
    @State private var _source: String = "Manga"
    @State private var _startAir: Date = Date.now
    @State private var _startWatch: Date = Date.now
    @State private var _stopWatch: Date = Date.now
    @State private var _status: String = "Currently Watching"
    @State private var _studio: String = "Wit Studio | CloverWorks"
    @State private var _title: String = "SpyXFamily"
    @State private var _episodes: Int = 0
    @State private var _startAiring: Date = Date.now
    @State private var _endAiring: Date = Date.now
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Form{
                        TextField(text: $_title, prompt: Text("required")){
                            Text("Title")
                        }.padding(.horizontal, 10)
                        
//                        Stepper(value: $_episodes, step: 1){
//                            TextField(value: $_episodes, format: .number){
//                                Text("Episodes")
//                            }
//                        }
                        Picker("Season", selection: $_season){
                            Text("Winter").tag("winter")
                            Text("Spring").tag("spring")
                            Text("Summer").tag("summer")
                            Text("Fall").tag("fall")
                        }.padding(.horizontal, 10)
                    }
                }
                
                VStack{
                    List{
                        HStack{
                            Text("Episode 1")
                                Button("Watch", action: {print("watchep")})
                                Button("Skip", action: {print("skipep")})
                        }
                        HStack{
                            Text("Episode 2")
                                Button("Watch", action: {print("watchep")})
                                Button("Skip", action: {print("skipep")})
                        }
                        HStack{
                            Text("Episode 3")
                                Button("Watch", action: {print("watchep")})
                                Button("Skip", action: {print("skipep")})
                        }
                        HStack{
                            Text("Episode 999")
                                Button("Watch", action: {print("watchep")})
                                Button("Skip", action: {print("skipep")})
                        }
                    }
                    .frame(width: 400.0)
                }
            }
            Menu{
                Button("Delete", action:{print("Delete anime command")})
            } label: {
                Text("Save")
            } primaryAction: {
                print("save func")
            }.padding(.leading, 650).padding(.bottom, 20).padding(.trailing, 20).menuStyle(.borderedButton)
        }
    }
}

#Preview {
    EditAnime().frame(width: 808.0, height: 407.0)
}
