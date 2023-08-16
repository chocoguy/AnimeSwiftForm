//
//  Navbar.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/1/23.
//

import SwiftUI

struct Navbar: View {
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink(destination: {
             Text("Anime Screen")
            }, label: {
                HStack{
                    Image(systemName: "face.smiling").foregroundStyle(.blue)
                    Text("Anime").foregroundStyle(.blue)
                }.frame(width: 120)
            })
            NavigationLink(destination: {
             Text("Schedule Screen")
            }, label: {
                HStack{
                    Image(systemName: "list.bullet").foregroundStyle(.blue)
                    Text("Schedule").foregroundStyle(.blue)
                }.frame(width: 120)
            })
            NavigationLink(destination: {
             Text("MAL Digest Screen")
            }, label: {
                HStack{
                    Image(systemName: "globe").foregroundStyle(.blue)
                    Text("MAL Digest").foregroundStyle(.blue)
                }.frame(width: 120)
            })
            NavigationLink(destination: {
             Text("Settings or about screen")
            }, label: {
                HStack{
                    Image(systemName: "gearshape").foregroundStyle(.blue)
                    Text("About").foregroundStyle(.blue)
                }.frame(width: 120)
            })
            
            Spacer()
        }

        
    }
}

#Preview {
    Navbar()
}
