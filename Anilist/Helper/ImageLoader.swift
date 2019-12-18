//
//  ImageLoader.swift
//  Anilist
//
//  Created by Gonzalo Cham on 10/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var data:Data?

    init(imageUrl: String) {
        guard let url = URL(string: imageUrl) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
