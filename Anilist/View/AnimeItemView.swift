//
//  AnimeItemView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 17/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct AnimeItemView: View {
    var animeViewModel: AnimeViewModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            ImageView(withURL: animeViewModel.imageURL)
                .frame(width: 110, height: 160)
                .cornerRadius(18)
            
            Text(animeViewModel.title)
                .font(.subheadline)
            
            HStack (spacing: 8) {
                HStack (spacing: 5) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.blue)
                        .padding(.bottom, 2)
                    Text(animeViewModel.score)
                        .font(.footnote)
                        .foregroundColor(Color.blue)
                }
                .padding(.horizontal, 5)
                .padding(.vertical, 2)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                Text(animeViewModel.episodes)
                    .font(.footnote)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 2)
                    .foregroundColor(Color.blue)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
        }.frame(width: 120)
    }
}
