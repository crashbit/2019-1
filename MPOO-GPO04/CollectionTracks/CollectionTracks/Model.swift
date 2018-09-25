//
//  Model.swift
//  CollectionTracks
//
//  Created by Germán Santos Jaimes on 9/25/18.
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
}
