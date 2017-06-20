# YHDateRangePicker
[![Platform](https://img.shields.io/cocoapods/p/EPCalendarPicker.svg?style=flat)](http://cocoapods.org/pods/EPContactsPicker)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/cocoapods/l/Ouroboros.svg?style=flat)](https://github.com/yuhsuan19/YHDateRangePicker/blob/master/LICENSE)

![YHDateRangePicekr](https://github.com/yuhsuan19/YHDateRangePicker/blob/master/Demo/demo.gif)

## Initialization
* Init dateRangePicker with default colors:
```swift
let dateRangePicker = YHDateRangePicker()
```

* Init dateRangePicker with customized colors:
```swift
let dateRangePicker = YHDateRangePicker(mainColor: yourColor1, subColor: yourColor2)
```

## Delegate
* set delegate
```swift
class ViewController: UIViewController, YHDateRangePickerDelegate {

}  
```
```swift
  dateRangePicker.delegate = self
```
* delegate method
```swift
    func finishDatePicking() {
      // code after user pick date range.
    }
```
