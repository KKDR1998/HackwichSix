//
//  ViewController.swift
//  HackwichSix
//
//  Created by User on 3/2/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //Hackwich 12
    var restaurantImageData = [String]()
    
    
    //var placesToVisit = ["Maui", "Colorado", "Japan", "Okinawa"]
    //var friendsHomeArray = ["Kanani", "Tiana", "Jeremy"]
    //Hackwich 12 Problem set
    var friendsHomeArray = ["Kapolei Kalapawai"]

    var subtleNameArrary = ["Honolulu", "Palehua", "Ithaca"]
    
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //return placesToVisit.count
        return friendsHomeArray.count
    }
    
    
    //displays what's in cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        //let text = placesToVisit[indexPath.row]
        let text = friendsHomeArray[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = subtleNameArrary[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Hackwich 12
        //make sure wording is exact
        //holds the pathway to were the property list is
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        //creating variable to access the dictionary of that database
        let dict = NSDictionary(contentsOfFile: path!)
        
        //access the images within the dictionary
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        
        
        
        
        
        
        
    }
    //add a new tableview frunction that detects when a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        
        {
            
            let s1 = segue.destination as! detailViewController
            
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            
        }
        
        
    }
    

}

