//
//  AddAnimeMAL.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/20/23.
//

import SwiftUI

struct AddAnimeMAL: View {
    
    @State private var _searchQuery: String = ""
    @State private var _title: String = "SpyXFamily"
    @State private var _timing: String = "Spring - 2022"
    @State private var _animeStatus: String = "Finished Airing"
    @State private var _animeEpString: String = "12 Episodes"
    @State private var _animeScore: String = "8.61 Score"
    
    private var animes = [
        AnimeSample(title: "SpyXFamily", timing: "Spring - 2022", animeStatus: "Finished Airing", animeEp: "12 Episodes", animeScore: "8.61 on MAL"),
        AnimeSample(title: "Initial D", timing: "Fall - 1998", animeStatus: "Finished Airing", animeEp: "24 Episodes", animeScore: "7.8 on MAL"),
        AnimeSample(title: "Suki na ko ga Megane wo Wasureta", timing: "Summer - 2023", animeStatus: "Airing", animeEp: "12 Episodes", animeScore: "7.5 on MAL")
    ]
    
    var body: some View {
        VStack{
            Form{
                TextField(text: $_searchQuery, prompt: Text("Search")){
                    Image(systemName: "magnifyingglass")
                }.padding(.top, 10).autocorrectionDisabled(true).frame(width: 260)
            }
            List(animes){ anime in
                VStack(alignment: .leading){
                    Text(anime.title).fontWeight(.bold)
                    Text(anime.timing + " | " + anime.animeEp)
                    Text(anime.animeScore)
                }
            }
            
        }
        
    }
}

struct AnimeSample: Identifiable {
    let title: String
    let id = UUID()
    let timing: String
    let animeStatus: String
    let animeEp: String
    let animeScore: String
}

#Preview {
    AddAnimeMAL().frame(width: 808.0, height: 407.0)
}
