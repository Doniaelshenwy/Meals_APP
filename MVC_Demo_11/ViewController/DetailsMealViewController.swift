//
//  DetailsMealViewController.swift
//  MVC_Demo_11
//
//  Created by Donia Elshenawy on 16/04/2022.
//

import UIKit

class DetailsMealViewController: UIViewController {
    
    
    @IBOutlet weak var imageMeal: UIImageView!
    
    @IBOutlet weak var nameMeal: UILabel!
    
    @IBOutlet weak var priceMealLabel: UILabel!
    
    var comingMsg : Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageMeal.image = UIImage(data: comingMsg.img)
        nameMeal.text = comingMsg.name
        priceMealLabel.text = "\(comingMsg.price) L.E"
    }
    

   

}
