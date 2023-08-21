//
//  Home.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/1/23.
//

import SwiftUI
import CoreData
import Foundation

struct Home: View {
    
    @State private var SampleAnime = AnimeModel.animes.sorted(using: KeyPathComparator(\.title))
    @State private var sortOrder = [KeyPathComparator(\AnimeModel.title)]
    @State private var selection: AnimeModel.ID?
    @State private var path = [AnimeModel]()
    
    /*
     FOR IOS
     
     @Enviornment(\.horizontalSizeClass) var sizeClass
     @State private var ascend = true
     
     if sizeClass == .compact {
        Button{
     if ascend {
        SampleAnime.sort {$0.name < $1.name} else >
     }
     } label  : {
        Text(ascend ? "Sort \(Image(systemName: "arrowtriangle.down"))"
     }
     .
     }
     
     debugging, po hasMoreFollowers
     po fol
     
     */
    
    var body: some View {
        NavigationStack(path: $path){
            NavigationSplitView {
                Navbar()
            } detail: {
                Text("Anime table")
                Table(SampleAnime, selection: $selection, sortOrder: $sortOrder) {
                    TableColumn("Anime", value: \.title)
                    TableColumn("Season", value: \.season)
                    TableColumn("Episodes", value: \.episodes) {anime in
                        Text("\(anime.episodes)")
                    }.width(60)
                    TableColumn("Total Episodes") {anime in
                        HStack{
                            Spacer()
                            Text("\(anime.episodeCount == 24 ? "24 - Full Course" : " 12 - Half Course")")
                        }
                    }
                }.onChange(of: sortOrder) { newOrder in
                    SampleAnime.sort(using: newOrder)
                    }
                .onChange(of: selection) {selection in
                        if let selection = selection,
                           let animu = SampleAnime.first(where: {$0.id == selection}) {
                            path.append(animu)
                            print("Anime \(animu.title)")
                        }
                }
                
                Menu{
                    Button("Add manually", action: {print("add manually")})
                } label: {
                    Text("Add Anime")
                } primaryAction: {
                    print("add anime func")
                }.padding(.leading, 550).padding(.bottom, 20).padding(.trailing, 20).menuStyle(.borderedButton)
                
                
            }
            .navigationTitle("AnimeSwiftForm - Home")
            .navigationDestination(for: AnimeModel.self) { anime in
                //Text("Anime \(anime.title)")
                AddAnimeMAL()
                    .navigationTitle("Add")
            }
            .onAppear{
                selection = nil
            }
        }
    }
}



#Preview {
  Home().frame(width: 808.0, height: 407.0)
}

