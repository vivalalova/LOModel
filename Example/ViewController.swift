//
//  ViewController.swift
//  Example
//
//  Created by Kuo-HsunShih on 2016/9/18.
//  Copyright © 2016年 Lova. All rights reserved.
//

import UIKit
import LOModel


class ExampleModel: LOModel {
    var title:String?
    var id = 0
    
    override func mapping() -> [String : String] {
        return [
            "identifier":"id"
        ]
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let obj = ExampleModel(dict: ["title":"okok","identifier":123])
        
        print(obj.toDictionary())
    }
}

