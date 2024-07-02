//
//  DataService.swift
//  JokeTestApp
//
//  Created by Tauan Tathiell Camargo on 01/07/24.
//

import Foundation

struct DataService {
    func getJoke() async -> JokeResponse? {
        if let url = URL(string: "https://v2.jokeapi.dev/joke/Any?type=single") {
            let request = URLRequest(url: url)
            
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                
                let decoder = JSONDecoder()
                
                do {
                    let response = try decoder.decode(JokeResponse.self, from: data)
                    
                    return response
                } catch {
                    print("Error to decode value \(error)")
                    return nil
                }
            } catch {
                print("Error to fetch api \(error)")
                return nil
            }
        }
        
        return nil
    }
}
