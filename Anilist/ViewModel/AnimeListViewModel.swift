//
//  AnimeListViewModel.swift
//  Anilist
//
//  Created by Gonzalo Cham on 25/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

class AnimeListViewModel : ObservableObject {
    
    @Published var animesVM: [AnimeViewModel] = []
    
    func searchAnime(query: String){
        JikanService().searchAnime(matching: query) { result in
            switch result {
            case .success(let animes): DispatchQueue.main.async { self.animesVM = animes.compactMap { anime in anime.toViewModel() } }
            case .failure(let error): print(error)
            }
        }
    }
}
