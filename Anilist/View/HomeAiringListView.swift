//
//  HomeAiringListView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 17/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct HomeAiringListView: View {
    @ObservedObject var animeListViewModel = AnimeListViewModel()
    
    init() {
        self.animeListViewModel.getAiringAnime()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Airing")
                .font(.title)
                .padding(.leading, 15)
                .padding(.bottom, 2)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 7) {
                    ForEach(self.animeListViewModel.animesVM) { animeVM in
                        AnimeItemView(animeViewModel: animeVM)
                    }
                }.padding(.horizontal, 5)
            }
            .frame(height: 185)
        }
    }
}
