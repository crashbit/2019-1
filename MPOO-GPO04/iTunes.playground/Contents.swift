//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

struct Resultado: Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
}

let jsonDecoder = JSONDecoder()

let url = URL(string: "https://itunes.apple.com/search?term=metallica")!
let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
    
    if let data = data, let tracks = try? jsonDecoder.decode(Resultado.self, from: data){
        tracks.results.forEach({ (track) in
            print(track.trackName)
        })
    }
}

task.resume()


PlaygroundPage.current.needsIndefiniteExecution = true
