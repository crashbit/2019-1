//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable{
    var artistName: String
    var trackName: String
}

let BaseURL = URL(string: "https://itunes.apple.com/search?")!

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

let query : [String: String] = [
    "term" : "mecano",
    "limit": "10"
]

let url =  BaseURL.withQueries(query)

let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
    if let data = data, let trackDictionary = try? jsonDecoder.decode(Results.self, from: data)
    {
        trackDictionary.results.forEach({ (track) in
            print(track.artistName, track.trackName)
        })
    }else{
        print(error.debugDescription)
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
