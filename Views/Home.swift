//
//  Home.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/1/23.
//

import SwiftUI

struct Home: View {
    
    
    var body: some View {
        NavigationStack(){
            NavigationSplitView {
                Navbar()
            } detail: {
                Text("Main content")
                    .listStyle(.plain)
                    .navigationTitle("AnimeSwiftForm - Home")
            }
        }
    }
}



#Preview {
  Home()
}

