//
//  APICaller.swift
//  Netflix
//
//  Created by RUMEN GUIN on 04/03/23.
//

import Foundation

struct Constants {
    static let API_KEY = "656741d50514ebf963bfbc1362dcc019"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> () ) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                //print(results.results[0].original_name)
            } catch {
                completion(.failure(error))
            }
            
            
        }
        task.resume()
        
    }
}
