//
//  Model.swift
//  ItunesCollection
//
//  Created by Germán Santos Jaimes on 9/26/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import Foundation

struct Resultados : Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
    var trackPrice: Double
    var artworkUrl100: String
}

