//
//  ContentView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 21/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            HomeTabView()
                .font(.title)
                .tabItem {
                    Image(systemName: "house")
                    Text("First")
                }
                .tag(0)
            SearchTabView()
                .font(.title)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Second")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
