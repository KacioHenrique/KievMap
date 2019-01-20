//
//  PlaceTableViewDataSource.swift
//  Kiev App
//
//  Created by Ian Manor on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import UIKit

class PlaceTableViewDataSource: NSObject, UITableViewDataSource {
    
    // Data model: These strings will be the data for the table view cells
    let places = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath) as! PlaceTableViewCell
        
        cell.nameLabel.text = places[indexPath.row]
        
        return cell
    }
    

}
