//
//  ContentTableViewController.swift
//  World Atlas
//
//  Created by Matthew Turk on 7/13/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import UIKit

class ContenentTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchDisplayDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        tableView.estimatedRowHeight = tableView.rowHeight
        //        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    var placesArray = [Place]()
    var filteredPlaces = [Place]()
    
    // MARK: - Data Source
    
    lazy var contenents: [Contenent] = {
        return Contenent.contenents()
        }()
    
    // MARK: - UITableViewDataSource

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let placeLine = contenents[section]
        return placeLine.name
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return contenents.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.searchDisplayController?.searchResultsTableView) {
            println("egrwibuergghiewfghgyergyi")
            return self.filteredPlaces.count
        }
        else
        {
            return contenents[section].places.count   // the number of places in the section
        }
    }
    
    // indexPath: which section and which row
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Place Cell", forIndexPath: indexPath) as! PlaceTableViewCell
        
        var place : Place
        
        if (tableView == self.searchDisplayController?.searchResultsTableView) {
            place = self.filteredPlaces[indexPath.row]
        } else {
        cell.configureCellWithPlace(contenents[indexPath.section].places[indexPath.row])
        }
        return cell
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "Title")
        
    {
        
        self.filteredPlaces = self.placesArray.filter({( place : Place) -> Bool in
            
            
            
            var categoryMatch = (scope == "Title")
            
            var stringMatch = place.title.rangeOfString(searchText)
            
            
            
            return categoryMatch && (stringMatch != nil)
            
            
        })
        
    }
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String!) -> Bool
        
    {
        
        
        
        self.filterContentForSearchText(searchString, scope: "Title")
        
        
        
        return true
        
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool
        
    {
        
        
        
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text, scope: "Title")
        
        return true
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "Show Info":
                let placeDetailVC = segue.destinationViewController as! PlaceDetailViewController
                if let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell) {
                    placeDetailVC.place = placeAtIndexPath(indexPath)
                }
            default: break
            }
        }
    }
    
    //MARK: - Helper Method
    
    func placeAtIndexPath(indexPath: NSIndexPath) -> Place {
        return contenents[indexPath.section].places[indexPath.row]
    }
}