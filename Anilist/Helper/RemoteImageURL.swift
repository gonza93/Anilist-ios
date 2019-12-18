//
//  RemoteImageURL.swift
//  Anilist
//
//  Created by Gonzalo Cham on 10/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

class RemoteImageURL : ObservableObject {
    
    @Published var data = Data()
    
    init(imageURL: String){
        guard let url = URL(string: imageURL) else { return }
        URLSession.shared.dataTask(with: url) { data, res, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
    
}
