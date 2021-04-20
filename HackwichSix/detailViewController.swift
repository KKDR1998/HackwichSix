//
//  detailViewController.swift
//  HackwichSix
//
//  Created by User on 4/20/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    //holds the string of the image being pased from the cell that has been selected
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //then we need to create a second variable to set the imagePass into the imageView

        if let imageName = imagePass {
            imageView.image = UIImage(named:imageName)
            
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
