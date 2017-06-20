# YHDateRangePicker
![YHDateRangePicekr](https://github.com/yuhsuan19/YHDateRangePicker/blob/master/Demo/demo.gif)

## Initialization
* Init dateRangePicker with default colors:
```swift
let dateRangePicker = YHDateRangePicker()
```

* Init dateRangePicker with customized colors:
```swift
let dateRangePicler = YHDateRangePicker(mainColor: yourColor1, subColor: yourColor2)
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
