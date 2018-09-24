import UIKit
import PlaygroundSupport

let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo")!

let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
    
    if let datos = data, let resultado = try? jsonDecoder.decode([String:String].self, from: datos){
    print(resultado["explanation"]! )
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
