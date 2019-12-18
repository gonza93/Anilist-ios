//
//  AnimeRowView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 22/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct AnimeRowView: View {
    var animeViewModel: AnimeViewModel
    
    var body: some View {
        HStack (alignment: .top, spacing: 10) {
            ImageView(withURL: animeViewModel.imageURL)
                .frame(width: 80, height: 120)
                .cornerRadius(18)
            
            VStack (alignment: .leading, spacing: 4) {
                Text(verbatim: animeViewModel.title)
                    .font(.headline)
                HStack (spacing: 12) {
                    HStack (spacing: 5) {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color.blue)
                            .padding(.bottom, 2)
                        Text(animeViewModel.score)
                            .font(.subheadline)
                            .foregroundColor(Color.blue)
                    }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 2)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    Text(animeViewModel.episodes)
                        .font(.subheadline)
                        .padding(.horizontal, 5)
                        .padding(.vertical, 2)
                        .foregroundColor(Color.blue)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                Text(animeViewModel.synopsis)
                    .font(.subheadline)
            }
        }
        .padding(.horizontal, 6)
        .padding(.vertical, 8)
    }
}
