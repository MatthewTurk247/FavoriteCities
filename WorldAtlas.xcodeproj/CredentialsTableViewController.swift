//
//  CredentialsTableViewController.swift
//  WorldAtlas
//
//  Created by Matthew Turk on 9/13/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import UIKit

class CredentialsTableViewController: UITableViewController {

    @IBOutlet var bedHours: UITextField!
    @IBOutlet var awakeHours: UITextField!
    @IBOutlet var sleepHours: UITextField!
    @IBAction func saveAction(sender: AnyObject) {
        if sleepHours.text != "" {
        NSUserDefaults.standardUserDefaults().setInteger(sleepHours.text!.toInt()!, forKey: "sleepHours")
        }
        if awakeHours.text != "" {
        NSUserDefaults.standardUserDefaults().setInteger(awakeHours.text!.toInt()!, forKey: "awakeHours")
        }
        if bedHours.text != "" {
        NSUserDefaults.standardUserDefaults().setInteger(bedHours.text!.toInt()!, forKey: "bedHours")
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func cancellAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        if NSUserDefaults.standardUserDefaults().integerForKey("sleepHours") == 0 {
            sleepHours.text = ""
        } else {
        sleepHours.text = String(NSUserDefaults.standardUserDefaults().integerForKey("sleepHours"))
        }
        
        if NSUserDefaults.standardUserDefaults().integerForKey("awakeHours") == 0 {
            awakeHours.text = ""
        } else {
            awakeHours.text = String(NSUserDefaults.standardUserDefaults().integerForKey("awakeHours"))
        }
        
        if NSUserDefaults.standardUserDefaults().integerForKey("bedHours") == 0 {
            bedHours.text = ""
        } else {
            bedHours.text = String(NSUserDefaults.standardUserDefaults().integerForKey("bedHours"))
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 3
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
