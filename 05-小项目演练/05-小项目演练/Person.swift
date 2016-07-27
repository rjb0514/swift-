//
//  Person.swift
//  05-小项目演练
//
//  Created by 茹 on 16/7/27.
//  Copyright © 2016年 rujianbin. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    
    //MARK: KVC转模型
    init(dict:[String:AnyObject]) {
        
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    //MARK: 为了防止崩溃重写undefind
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        //什么也不做
    }
    
    //MARK: 打印
    override var description: String {
    
    return "\(self.name)---\(self.age)"
    
    }

}
