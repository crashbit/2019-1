//
//  ViewController.swift
//  ItunesCollection
//
//  Created by Germán Santos Jaimes on 9/26/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var lista : [Track] = []
    
    @IBOutlet weak var collection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! ItemCollectionViewCell
        
        cell.backgroundColor = UIColor.red
        
        cell.titulo.text = lista[indexPath.row].trackName
        cell.precio.text = String(lista[indexPath.row].trackPrice)
        
        let url = URL(string: lista[indexPath.row].artworkUrl100)
        let data = try? Data(contentsOf: url!)
        let image = UIImage(data: data!)
        
        cell.portada.image = image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func fetchData(){
        let url = URL(string: "https://itunes.apple.com/search?term='luis%20miguel'")!
        
        let jsonDecoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
            
            if let datos = data, let resultado = try? jsonDecoder.decode(Resultados.self, from: datos){
                
                resultado.results.forEach({ (track) in
                    //print(track.trackName, track.trackPrice)
                 
                    self.lista.append(Track(trackName: track.trackName, trackPrice: track.trackPrice, artworkUrl100: track.artworkUrl100) )
                })
                
                DispatchQueue.main.async{
                    self.collection.reloadData()
                }

            }
            
           
        }
        
        task.resume()
    }


}

