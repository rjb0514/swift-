//
//  TwoController.swift
//  05-小项目演练
//
//  Created by 茹 on 16/7/27.
//  Copyright © 2016年 rujianbin. All rights reserved.
//

import UIKit

class TwoController: UIViewController {
    
    //模型
    var model: Person?
    
    var nameTextField = UITextField()
    
    var ageTextField = UITextField()
    // 定义一个闭包,这个闭包没有赋值
//    var closure: (()->())?
    var closure: (()->())?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //设置控制器的背景
        view.backgroundColor = UIColor.whiteColor()

        //创建控件
        setupUI()
        
        //给控件赋值
        nameTextField.text = model?.name
        ageTextField.text = "\(model?.age ?? 0)"
    
        
    }
    
    //MAR: 创建控件
    func setupUI() {
        //创建2个textField
        nameTextField = UITextField(frame: CGRect(x: 20, y: 50+64, width: UIScreen.mainScreen().bounds.size.width - 40, height: 30))
        
        nameTextField.placeholder = "姓名"
        
        view.addSubview(nameTextField)
        
        ageTextField = UITextField(frame: CGRect(x: 20, y: 120+64, width: UIScreen.mainScreen().bounds.size.width - 40, height: 30))
        ageTextField.placeholder = "年龄"
        
        view.addSubview(ageTextField)
        
        let rigthBtn = UIBarButtonItem(title: "保存", style: .Plain, target: self, action: #selector(TwoController.rightBtnClick(_:)))
        
    
        navigationItem.rightBarButtonItem = rigthBtn
        
    }

    func rightBtnClick(rightBtn:UIBarButtonItem) -> () {
        
        model?.name = nameTextField.text
        model?.age = Int(ageTextField.text!)!
        
        //跳会控制器
        navigationController?.popViewControllerAnimated(true)
        
        //调用闭包
        closure?()
        
    }
   

    deinit {
    
        print("TWO控制器 88")
    }
}
