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
        self.imageURL = anime.imageURL ?? ""
        self.title = anime.title
        self.airing = anime.airing ?? false
        self.synopsis = anime.synopsis ?? "N/A"
        self.type = anime.type ?? "N/A"
        self.episodes = "\(anime.episodes ?? 0) ep."
        self.score = String(format: "%.2f", anime.score ?? 0)
        //self.startDate = dateFormatter.date(from: anime.endDate ?? "")!
        self.startDate = Date()
        self.endDate = Date()
        self.members = anime.members ?? 0
        self.rated = anime.rated ?? "N/A"
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
