//
//  PlaceDetailViewController.swift
//  WorldAtlas
//
//  Created by Matthew Turk on 7/15/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class PlaceDetailViewController: UITableViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var place:Place?
    var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(10.0, 10.0)
    
    @IBAction func openMap(sender: AnyObject) {
        if place?.urlTitle != nil {
            UIApplication.sharedApplication().openURL(NSURL(string: "http://maps.apple.com/?q=\(place!.urlTitle)")!)
        } else {
            println("yikes")
        }
    }
    
    @IBAction func openWiki(sender: AnyObject) {
        if place?.wikiTitle != nil {
            UIApplication.sharedApplication().openURL(NSURL(string: "http://\(NSLocale.preferredLanguages()[0]).wikipedia.org/wiki/\(place!.wikiTitle)")!)
        }
    }
    
    @IBAction func changeCoordSpan(sender: AnyObject) {
        theSpan = MKCoordinateSpanMake(CLLocationDegrees(placeSlider.value), CLLocationDegrees(placeSlider.value))
        println(placeSlider.value)
        var latitude = CLLocationDegrees(place!.x)
        var longitude = CLLocationDegrees(place!.y)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let theRegion:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
        placeMapView.setRegion(theRegion, animated: true)
    }
    @IBOutlet weak var placeSlider: UISlider!
    @IBOutlet weak var placeDescriptionLabel: UITextView!
    
    @IBOutlet weak var placeTitleLabel: UILabel!
    
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeMapView: MKMapView!
    var coreLocationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        println(place!.urlTitle)
        coreLocationManager.delegate = self
        placeMapView.delegate = self
        self.title = place?.title
        var latitude = CLLocationDegrees(place!.x)
        var longitude = CLLocationDegrees(place!.y)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let theRegion:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
        placeMapView.setRegion(theRegion, animated: true)
        var anotation = MKPointAnnotation()
        anotation.coordinate = location
        placeMapView.addAnnotation(anotation)
        placeImageView.image = place?.image
        placeTitleLabel.text = String(NSUserDefaults.standardUserDefaults().integerForKey("sleepHours") / NSUserDefaults.standardUserDefaults().integerForKey("bedHours") * place!.x)
        placeDescriptionLabel.text = place?.description
    }
    
}