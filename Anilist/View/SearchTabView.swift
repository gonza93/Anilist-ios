//
//  SearchTabView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 21/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct SearchTabView: View {
    @ObservedObject var animeListVM = AnimeListViewModel()
    
    init () {
        self.animeListVM.searchAnime(query: "Air")
    }
    
    var body: some View {
        NavigationView {
            List (animeListVM.animesVM) { animeVM in
                AnimeRowView(animeVM: animeVM)
            }
            .navigationBarTitle("Search")
        }
    }
}

struct SearchTabView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
