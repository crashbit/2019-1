//
//  ViewController.swift
//  CollectionTracks
//
//  Created by Germán Santos Jaimes on 9/25/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var coleccion: UICollectionView!
    var lista : [Track] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(lista.count)
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! ItemCollectionViewCell
        
        cell.backgroundColor = UIColor.red
        cell.titulo.text = lista[indexPath.item].trackName
        cell.precio.text = String(lista[indexPath.item].trackPrice)
        
        return cell
    }
    
    func fetchData(){
        
        let url = URL(string: "https://itunes.apple.com/search?term='metallica'")!
        
        let jsonDecoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
            
            if let datos = data, let resultado = try? jsonDecoder.decode(Resultados.self, from: datos){
                
                resultado.results.forEach({ (track) in
                    self.lista.append(Track(trackName: track.trackName, trackPrice: track.trackPrice  ))
                    print(track.trackName, track.trackPrice)
                })
            self.coleccion.reloadData()
                
            }
        }
        task.resume()
    }


}

