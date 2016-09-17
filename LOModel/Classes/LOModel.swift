//
//  LOModel.swift
//  LOModel
//
//  Created by Kuo-HsunShih on 2016/9/18.
//  Copyright © 2016年 Lova. All rights reserved.
//

import UIKit

open class LOModel:NSObject {
    
    public init(dict:[String:Any]?) {
        super.init()
        
        guard dict != nil else {
            return
        }
        
        self.setValuesForKeys(dict!)
    }
    
    open func toDictionary() -> [String:Any] {
        let propertyNames = Mirror(reflecting: self).children.flatMap {$0.label}
        return self.dictionaryWithValues(forKeys: propertyNames)
    }
    
    open func mapping() -> [String:String] {
        return [String:String]()
    }
    
    open override func setValue(_ value: Any?, forKey key: String) {
        super.setValue(value, forKey: key)
    }
    
    open override func setValue(_ value: Any?, forUndefinedKey key: String) {
        guard let mappedKey = self.mapping()[key] else {
            return
        }
        
        self.setValue(value, forKey: mappedKey)
    }
}
