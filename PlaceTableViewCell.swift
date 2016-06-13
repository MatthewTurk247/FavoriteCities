//
//  PlaceTableViewCell.swift
//  WorldAtlas
//
//  Created by Matthew Turk on 7/14/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import Foundation
import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeTitleLabel: UILabel!
    @IBOutlet weak var placeDecriptionLabel: UILabel!
    
    func configureCellWithPlace(place: Place) {
        placeImageView.image = place.image
        placeTitleLabel.text = place.title
        placeDecriptionLabel.text = place.description
        
    }
    
}
