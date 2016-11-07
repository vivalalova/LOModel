//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Kuo-HsunShih on 2016/11/7.
//  Copyright © 2016年 Lova. All rights reserved.
//

import XCTest
@testable import Example


class ExampleTests: XCTestCase {
    func testExample() {

        let obj = ExampleModel(dict: ["title":"okok","identifier":123])
        print(obj.toDictionary())

        let array = [["title":"okok","identifier":123],["title":"haha","identifier":456]].map { (dict) -> ExampleModel in
            return ExampleModel(dict: dict)
        }

        for model in array {
            print(model.toDictionary())
        }
    }
}
