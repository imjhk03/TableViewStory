//
//  AttractionTableViewController.swift
//  TableViewStory
//
//  Created by Joo Hee Kim on 2015. 11. 5..
//  Copyright © 2015년 Joo Hee Kim. All rights reserved.
//

import UIKit

class AttractionTableViewController: UITableViewController {
    var attractionImages = [String]()
    var attractionNames = [String]()
    var webAddresses = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        attractionNames = ["Jason Chen",
            "Liam Payne",
            "Taylor Swift",
            "Justin Timberlake",
            "Sam Smith"]
        
        webAddresses = ["https://en.wikipedia.org/wiki/Jason_Chen",
            "https://ko.wikipedia.org/wiki/%EB%A6%AC%EC%97%84_%ED%8E%98%EC%9D%B8",
            "https://ko.wikipedia.org/wiki/%ED%85%8C%EC%9D%BC%EB%9F%AC_%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8",
            "https://ko.wikipedia.org/wiki/%EC%A0%80%EC%8A%A4%ED%8B%B4_%ED%8C%80%EB%B2%84%EB%A0%88%EC%9D%B4%ED%81%AC",
            "https://ko.wikipedia.org/wiki/%EC%83%98_%EC%8A%A4%EB%AF%B8%EC%8A%A4"]
        
        attractionImages = ["jasonchen.png",
            "liam.png",
            "taylor.png",
            "justin.jpg",
            "sam.png"]
        
        tableView.estimatedRowHeight = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attractionNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            self.tableView.dequeueReusableCell(
                withIdentifier: "AttractionTableCell", for: indexPath as IndexPath)
                as! AttractionTableViewCell
        
        let row = indexPath.row
        cell.attractionLabel.font =
            UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.attractionLabel.text = attractionNames[row]
        cell.attractionImage.image = UIImage(named: attractionImages[row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAttractionDetails" {
            let detailViewController = segue.destination as! AttractionDetailViewController
            
            let myIndexPath = self.tableView.indexPathForSelectedRow
            let row = myIndexPath?.row
            detailViewController.webSite = webAddresses[row!]
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
