//
//  JikanService.swift
//  Anilist
//
//  Created by Gonzalo Cham on 08/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

class JikanService {
    

    func searchAnime(matching query: String, handler: @escaping (Result<[Anime], Error>) -> Void) {
        var queryItems: [URLQueryItem] = []
        queryItems.append(URLQueryItem(name: "q", value: query))
        
        NetworkingHelper().call(endpoint: "/search/anime", queryItems: queryItems) { (result : Result<Response, Error>) in
            switch result {
            case .success(let response): handler(.success(response.results!))
            case .failure(let error): handler(.failure(error))
            }
        }
    }
    
    func getAiringAnime(page: Int, handler: @escaping (Result<[Anime], Error>) -> Void){
        //var queryItems: [URLQueryItem] = []
        
        NetworkingHelper().call(endpoint: "/top/anime/\(page)/airing", queryItems: []) { (result: Result<Response, Error>) in
            switch result {
            case .success(let response): handler(.success(response.top!))
            case .failure(let error): handler(.failure(error))
            }
        }
    }
    
}
