//
//  APICaller.swift
//  Netflix_Clone
//
//  Created by Puneet Bajaj on 10/18/23.
//

import Foundation

struct Constants{
    static let API_KEY = "4191f19c51306d5ef91b90f12182c034"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else{return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
