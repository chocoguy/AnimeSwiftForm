//
//  AddAnime.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/15/23.
//

import SwiftUI



struct AddAnime: View {
    
    @State var _title: String = ""
    @State var _episodes: Int = 0
    @State var _season: String = ""
    @State var _mediaType: String = ""
    @State var _startAiring: Date = Date.now
    @State var _endAiring: Date = Date.now
    
    
    var body: some View {
        Form{
            VStack{
                HStack{
                    Spacer()
                    TextField(text: $_title, prompt: Text("required")){
                        Text("Title")
                    }.padding(.horizontal, 50).autocorrectionDisabled(true)
                    Spacer()
                    Stepper(value: $_episodes, step: 1){
                        TextField(value: $_episodes, format: .number){
                            Text("Episodes")
                        }
                    }.padding(.horizontal, 50)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Picker("Season", selection: $_season){
                        Text("Winter").tag("winter")
                        Text("Spring").tag("spring")
                        Text("Summer").tag("summer")
                        Text("Fall").tag("fall")
                    }.padding(.horizontal, 50)
                    Spacer()
                    Picker("Media Type", selection: $_mediaType){
                        Text("TV").tag("tv")
                        Text("Movie").tag("movie")
                        Text("OVA").tag("ova")
                        Text("ONA").tag("ona")
                        Text("Special").tag("special")
                    }.padding(.horizontal, 50)
                    Spacer()
                }.padding(.top, 10)
                HStack{
                    Spacer()
                    DatePicker("Start Air", selection: $_startAiring, displayedComponents: [.date])
                        .padding(.trailing, 235)
                    Spacer()
                    DatePicker("End Air", selection: $_endAiring, displayedComponents: [.date])
                    Spacer()
                }.padding(.top, 10)
                Spacer()
                HStack{
                    Menu{
                        Button("Cancel", action: {print("Cancel")})
                        Button("Import from MAL", action: {print("Import from MAL func")})
                    } label: {
                        Text("Save")
                    } primaryAction: {
                        print("Save func")
                    }.padding(.leading, 600).padding(.bottom, 20).padding(.trailing, 20).menuStyle(.borderedButton)
                }
            }
            .padding(.top, 50)
            
        }
    }
}

#Preview {
    AddAnime()
        .frame(width: 707.0, height: 407.0)
}
