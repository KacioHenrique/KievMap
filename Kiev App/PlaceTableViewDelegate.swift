//
//  PlaceTableViewDelegate.swift
//  Kiev App
//
//  Created by Ian Manor on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import UIKit

class PlaceTableViewDelegate: NSObject, UITableViewDelegate {
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

}
