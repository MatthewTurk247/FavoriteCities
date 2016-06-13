//
//  Place.swift
//
//
//  Created by Matthew Turk on 7/13/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import Foundation
import UIKit

// Represents a generic product. Need an image named "default"

class Place {
    var title: String
    var description: String
    var image: UIImage
    var x:Int
    var y:Int
    var fullTitle:String
    var urlTitle:String
    var wikiTitle:String
    
    init(titled: String, description: String, imageName: String, x: Int, y: Int, fullTitle: String, urlTitle: String, wikiTitle: String) {
        self.title = titled
        self.description = description
        self.x = x
        self.y = y
        if let img = UIImage(named: imageName) {
            image = img
        } else {
            image = UIImage(named: "default")!
        }
        self.fullTitle = fullTitle
        self.urlTitle = urlTitle
        self.wikiTitle = wikiTitle
    }
}










