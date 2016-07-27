//
//  ViewController.swift
//  05-小项目演练
//
//  Created by 茹 on 16/7/27.
//  Copyright © 2016年 rujianbin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var persons: [Person]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //加载数据
        loadData { [weak self](personList) in
            
            self?.persons = personList
            
            //刷新数据
            self?.tableView.reloadData()
            
        }
        
    }
    
    
  

}

//MARK: 网络请求
extension ViewController {
    //MARK: 加载数据
    func loadData(finished:(personList:[Person])->()) {
        
        
        
        //模拟网路下载
        dispatch_async(dispatch_get_global_queue(0, 0)) {
            //创建数组
            var personList: [Person] = [Person]()
            for i in 0..<50 {
                
                let p = Person(dict: ["name":"ios--\(i)","age":i])
                
                personList.append(p)
            }
            
            //数据下载完，开启同步，主队列
            dispatch_sync(dispatch_get_main_queue(), {
                
                //在主线程刷新控件
                finished(personList: personList)
                
            })
        }
        
    }


}

//MARK: 数据源方法
extension ViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return persons?.count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.init(colorLiteralRed: Float(rand()%255)/256.0, green: Float(rand()%255)/256.0, blue: Float(rand()%255)/256.0, alpha: 1)
        
        return cell
    }

}

