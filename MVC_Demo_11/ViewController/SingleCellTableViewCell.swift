//
//  SingleCellTableViewCell.swift
//  MVC_Demo_11
//
//  Created by Donia Elshenawy on 16/04/2022.
//

import UIKit

class SingleCellTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var mealImage: UIImageView!
    
    
    @IBOutlet weak var mealName: UILabel!
    
    
    func dataSet(name : String, image : Data){
        mealName.text = name
        mealImage.image = UIImage(data: image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
