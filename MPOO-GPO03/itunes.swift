import UIKit
import PlaygroundSupport

struct Resultados : Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
    var trackPrice: Double
}

let url = URL(string: "https://itunes.apple.com/search?term='metallica'")!

let jsonDecoder = JSONDecoder()



let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
    
    if let datos = data, let resultado = try? jsonDecoder.decode(Resultados.self, from: datos){
        
        resultado.results.forEach({ (track) in
            print(track.trackName, track.trackPrice)
        })
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
