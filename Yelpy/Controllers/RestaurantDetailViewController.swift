//
//  RestaurantDetailViewController.swift
//  Yelpy
//
//  Created by Amys code on 9/30/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantDetailViewController: UIViewController {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    
    var r: Restaurant!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        restaurantImage.af.setImage(withURL: r.imageURL!)
        nameLabel.text = r.name
        reviewsLabel.text = String(r.reviews) + " reviews"
        starImage.image = Stars.dict[r.rating]!
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
