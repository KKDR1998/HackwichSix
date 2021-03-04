//
//  ViewController.swift
//  HackwichSix
//
//  Created by User on 3/2/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //var placesToVisit = ["Maui", "Colorado", "Japan", "Okinawa"]
    var friendsHomeArray = ["Kanani", "Tiana", "Jeremy"]
    var subtleNameArrary = ["Honolulu", "Palehua", "Ithaca"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //return placesToVisit.count
        return friendsHomeArray.count
    }
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }


}

