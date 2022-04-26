//
//  LocalDataBaseManger.swift
//  MVC_Demo_11
//
//  Created by Donia Elshenawy on 16/04/2022.
//

import Foundation
import UIKit

class LocalDataBaseManger{
    
    var mealArray : [Meal] = []
    
    func fetchData() -> [Meal] {
        
        let pizza = Meal(name: "Pizza", img: convertImgToData(img: UIImage(named: "1")!), price: 80)
        let burger = Meal(name: "Burger", img: convertImgToData(img: UIImage(named: "2")!), price: 60)
        let salad = Meal(name: "Salad", img: convertImgToData(img: UIImage(named: "3")!), price: 80)
        let pasta = Meal(name: "Pasta", img: convertImgToData(img: UIImage(named: "4")!), price: 50)
        let sandwitch = Meal(name: "Sandwitch", img: convertImgToData(img: UIImage(named: "5")!), price: 80)
        
        mealArray = [pizza,burger,salad,pasta,sandwitch,pizza,burger,salad,pasta,sandwitch,pizza,burger,salad,pasta,sandwitch]
        return mealArray
        
    }
    
    func convertImgToData(img : UIImage)-> Data{
        
        return img.pngData()!
    }
    
    
}
