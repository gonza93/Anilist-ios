//
//  SearchTabView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 21/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct SearchTabView: View {
    @ObservedObject var animeListViewModel = AnimeListViewModel()
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                SearchBarView() { (query) in
                    self.search(query: query)
                }
                
                ForEach (animeListViewModel.animesVM) { animeVM in
                    AnimeRowView(animeViewModel: animeVM)
                }
            }
            .navigationBarTitle("Search")
            .navigationBarItems(trailing: ProgressView(isLoading: self.isLoading))
        }
    }
    
    private func search(query: String) {
        if query == "" { return }
        self.isLoading = true;
        self.animeListViewModel.animesVM = []
        self.animeListViewModel.searchAnime(query: query)
        self.isLoading = false;
    }
    
}
