//
//  Anime.swift
//  Anilist
//
//  Created by Gonzalo Cham on 22/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

struct Anime : Identifiable, Decodable {
    var id = UUID()
    
    var malID: Int
    var url: String
    var imageURL: String?
    var title: String
    var airing: Bool?
    var synopsis: String?
    var type: String?
    var episodes: Int?
    var score: Double?
    var startDate, endDate: String?
    var members: Int?
    var rated: String?

    enum CodingKeys: String, CodingKey {
        case malID = "mal_id"
        case url
        case imageURL = "image_url"
        case title, airing, synopsis, type, episodes, score
        case startDate = "start_date"
        case endDate = "end_date"
        case members, rated
    }
    
    func toViewModel() -> AnimeViewModel {
        return AnimeViewModel(anime: self)
    }
}
