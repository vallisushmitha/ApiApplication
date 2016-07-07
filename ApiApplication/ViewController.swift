//
//  ViewController.swift
//  ApiApplication
//
//  Created by kvanaMini1 on 01/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
     var postsArray = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/posts")
            .responseJSON { response in
//                print(response.request)  // original URL request
//                print(response.response) // URL response
//                print(response.data)     // server data
//                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    for data in JSON as! [AnyObject]{
                        var details = Post(fromDictionary: data as! NSDictionary)
                        self.postsArray.append(details)
                    }
                    self.tableView.reloadData()
                }
              
        }
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
//    func fillDataArray(){
//        for index in 0..<50 {
//            let newModel = Details()
//            newModel.body = "Asffgsdfhkg"
//            newModel.title = "First"
//            detailArray.append(newModel)
//            
//        }
//        tableView.dataSource = self
//        tableView.delegate = self
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)as! CustomCell
        let post = postsArray[indexPath.row]
        cell.nameLbl.text = post.title
        cell.bodyLbl.text = post.body
         return cell
    }

}

