//
//  tbVC1.swift
//  CustomCellTable
//
//  Created by Warintira Pureprasert on 3/11/2568 BE.
//

import UIKit

class tbVC1: UITableViewController {

    let imgPlaces:[String] = ["buckingham_palace","eiffel_tower","empire_state_building","grand_canyon","windsor_castle"]
    
    let webAddress = ["http://en.wikipedia.org/wiki/Buckingham_Palace",
                      "http://en.wikipedia.org/wiki/Eiffel_Tower",
                      "http://en.wikipedia.org/wiki/Empire_State_Building",
                      "http://en.wikipedia.org/wiki/Grand_Canyon",
                      "http://en.wikipedia.org/wiki/Windsor_Castle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 200
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imgPlaces.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celldata", for: indexPath) as! tbVC_Cell1

        cell.lbCell.text = imgPlaces[indexPath.row]
        cell.imgCell.image = UIImage(named: imgPlaces[indexPath.row])
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row = (tableView.indexPathForSelectedRow?.row)!
        if segue.identifier == "urldata" {
            let vc1 = segue.destination as! ViewController
            vc1.urlPlace = webAddress[row]
            vc1.video = imgPlaces[row]
            vc1.row1 = row
            
        }
    }

}
