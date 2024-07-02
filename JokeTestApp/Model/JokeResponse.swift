//
//  JokeResponse.swift
//  JokeTestApp
//
//  Created by Tauan Tathiell Camargo on 01/07/24.
//

import Foundation

struct JokeResponse: Decodable {
    var error: Bool?
    var category: String?
    var type: String?
    var joke: String?
    var flags: Flag?
    var id: Int?
    var safe: Bool?
    var lang: String?
}

struct Flag: Decodable {
    var nsfw: Bool?
    var religious: Bool?
    var political: Bool?
    var racist: Bool?
    var sexist: Bool?
    var explicit: Bool?
}
