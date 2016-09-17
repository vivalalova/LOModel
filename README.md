# LOModel

[![CI Status](http://img.shields.io/travis/vivalalova/LOModel.svg?style=flat)](https://travis-ci.org/vivalalova/LOModel)
[![Version](https://img.shields.io/cocoapods/v/LOModel.svg?style=flat)](http://cocoapods.org/pods/LOModel)
[![License](https://img.shields.io/cocoapods/l/LOModel.svg?style=flat)](http://cocoapods.org/pods/LOModel)
[![Platform](https://img.shields.io/cocoapods/p/LOModel.svg?style=flat)](http://cocoapods.org/pods/LOModel)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LOModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LOModel"
```

## Useage

Inherit LOModel

```
class ExampleModel: LOModel {
    var title:String?
    var id = 0
}
```

And init with Dictionary

```
let obj = ExampleModel(dict: ["title":"okok","identifier":123])

print(obj.title)
print(obj.id)
print(obj.toDictionary())
```

#### Notice

* Some types like integer and double must has default value example for 0

## Author

vivalalova, vivalalova0@gmail.com

## License

LOModel is available under the MIT license. See the LICENSE file for more info.
