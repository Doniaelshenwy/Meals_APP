//
//  MealViewController.swift
//  MVC_Demo_11
//
//  Created by Donia Elshenawy on 16/04/2022.
//

import UIKit

class MealViewController: UIViewController {

    var localDataBaseManger = LocalDataBaseManger()
    var mealArray : [Meal] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealArray = localDataBaseManger.fetchData()

        tableView.register(UINib(nibName: "SingleCellTableViewCell", bundle: nil), forCellReuseIdentifier: "SingleCellTableViewCell")
    }
    

    

}
extension MealViewController : UITableViewDataSource,UITableViewDelegate,MealProtocol{
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    {
        return mealArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SingleCellTableViewCell", for: indexPath) as! SingleCellTableViewCell
        
        cell.dataSet(name: mealArray[indexPath.row].name, image:mealArray[indexPath.row].img)
        
//        cell.mealImage.image = UIImage(data: mealArray[indexPath.row].img)
//        cell.mealName.text = mealArray[indexPath.row].name
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsMealViewController") as? DetailsMealViewController {
            
            vc.comingMsg = mealArray[indexPath.row]
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func addData(meal: Meal) {
        mealArray.append(meal)
        tableView.reloadData()
    }
    
    
    
    
}

extension UITableView {
    
    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type){
        self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
    }


    func dequeue<Cell: UITableViewCell>() -> Cell{
        let identifier = String(describing: Cell.self)
        
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        
        return cell
    }
}
