//
//  AddMealViewController.swift
//  MVC_Demo_11
//
//  Created by Donia Elshenawy on 16/04/2022.
//

import UIKit

class AddMealViewController: UIViewController {

    
    var delegate : MealProtocol!
    
    @IBOutlet weak var imageMeal: UIImageView!
    
    
    @IBOutlet weak var nameMealTextField: UITextField!
    
    
    @IBOutlet weak var priceMealTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func doneAddBtn(_ sender: Any) {
        let name = nameMealTextField.text!
        let price = Double(priceMealTextField.text!)!
       // let img = imageMeal.image
        let img = UIImage(named: "1")!
        
        let imgConvertData = LocalDataBaseManger().convertImgToData(img: img)
        
        
        
        delegate.addData(meal: Meal(name: name, img: imgConvertData, price: price))
        
        self.navigationController?.popViewController(animated: true)
    }
    

}
