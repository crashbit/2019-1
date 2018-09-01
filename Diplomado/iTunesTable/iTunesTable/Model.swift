//
//  Model.swift
//  iTunesTable
//
//  Created by Germán Santos Jaimes on 9/1/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import Foundation

struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable{
    var artistName: String
    var trackName: String
    var artworkUrl100: String
}
