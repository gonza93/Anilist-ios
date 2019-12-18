//
//  NetworkingHelper.swift
//  Anilist
//
//  Created by Gonzalo Cham on 08/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation

class NetworkingHelper {
    
    private let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    func call<T: Decodable>(endpoint: String, queryItems: [URLQueryItem], handler: @escaping (Result<T, Error>) -> Void) {
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.jikan.moe"
        urlComponents.path = "/v3" + endpoint
        urlComponents.queryItems = queryItems

        guard
            let url = urlComponents.url
            else { preconditionFailure("Can't create url from url components...") }

        session.dataTask(with: url) { data, res, error in
            if let error = error {
                handler(.failure(error))
            } else {
                do {
                    let response = try JSONDecoder().decode(T.self, from: data!)
                    handler(.success(response))
                } catch {
                    handler(.failure(error))
                }
            }
        }.resume()
    }
    
}
