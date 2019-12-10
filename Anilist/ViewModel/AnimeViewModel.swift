//
//  AnimeViewModel.swift
//  Anilist
//
//  Created by Gonzalo Cham on 08/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation
import SwiftUI

class AnimeViewModel : ObservableObject, Identifiable {
    
    var id = UUID()
    
    init (anime: Anime) {
        let dateFormatter = ISO8601DateFormatter()
        
        self.malID = anime.malID
        self.url = anime.url
        self.imageURL = anime.imageURL
        self.title = anime.title
        self.airing = anime.airing
        self.synopsis = anime.synopsis
        self.type = anime.type
        self.episodes = String(anime.episodes)
        self.score = String(format: "%.2f", anime.score)
        self.startDate = dateFormatter.date(from: anime.endDate ?? "")!
        self.endDate = Date()
        self.members = anime.members
        self.rated = anime.rated
    }
    
    var malID: Int
    var url: String
    var imageURL: String
    var title: String
    var airing: Bool
    var synopsis: String
    var type: String
    var episodes: String
    var score: String
    var startDate, endDate: Date
    var members: Int
    var rated: String
    
}
