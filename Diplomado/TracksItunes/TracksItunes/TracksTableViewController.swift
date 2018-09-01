//
//  TracksTableViewController.swift
//  TracksItunes
//
//  Created by Germán Santos Jaimes on 4/27/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import Alamofire

class TracksTableViewController: UITableViewController, UISearchBarDelegate {
    
    let reuseIdentifier = "rowId"
    
    var tracks:[Track] = []
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor.gray

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        Alamofire.request(url).responseData { (dataResponse) in
            if let err = dataResponse.error{
                print("Hubo un error", err)
                return
            }
            
            guard let data = dataResponse.data else { return }
            let testString = String(data: data, encoding: .utf8 )
            //print(testString ?? "")
            
            do{
               
                let searchResult = try JSONDecoder().decode(SearchResults.self, from: data)
                
                print("Results:", searchResult.resultCount)
                
                searchResult.results.forEach({ (track) in
                    print(track.artistName, track.trackName)
                    self.tracks.append(Track(trackName: track.trackName, artistName: track.artistName) )
                    self.tableView.reloadData()
                })
                
            }catch let decodeError{
                print("Error: ", decodeError)
            }
        }
    }

    struct SearchResults: Decodable{
        let resultCount: Int
        let results: [Track]
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tracks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)

        cell.textLabel?.text = "\(tracks[indexPath.row].artistName)\n \(tracks[indexPath.row].trackName)"
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
