//
//  PlaceTableViewCell.swift
//  Kiev App
//
//  Created by Ian Manor on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
