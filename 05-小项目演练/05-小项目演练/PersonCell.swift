//
//  PersonCell.swift
//  05-小项目演练
//
//  Created by 茹 on 16/7/27.
//  Copyright © 2016年 rujianbin. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    
    
    //模型
    var personModel: Person?{
    
        didSet {
        
            nameLabel.text = personModel?.name
            ageLabel.text = "\(personModel?.age ?? 0)"
        }
    
    }
    
    
    //nameLabel
    @IBOutlet weak var nameLabel: UILabel!
    
    //ageLabel
    @IBOutlet weak var ageLabel: UILabel!
    
    
    override func
        awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
