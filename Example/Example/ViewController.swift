//
//  ViewController.swift
//  YHDateRangePicekr Example
//
//  Created by YuHsuan CHI on 2017/6/3.
//  Copyright © 2017 yuhsuan19. All rights reserved.
//

import UIKit

class ViewController: UIViewController, YHDateRangePickerDelegate {
    
    // Layout
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var wakePickerButton: UIButton!
    
    let dateRangePicker = YHDateRangePicker()
    
    // Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()

        // calendarView
        self.view.addSubview(dateRangePicker)
        self.dateRangePicker.delegate = self
    }
    
    @IBAction func wakePickerButton(_ sender: Any) {
        self.dateRangePicker.show()
    }
   
    // calendar delegate function
    func finishDatePicking() {
        guard (self.dateRangePicker.startDate != nil && self.dateRangePicker.endDate != nil) else {
            self.dateLabel.text = "Please select dates"
            return
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        let startDateString = dateFormatter.string(from: self.dateRangePicker.startDate!)
        let endDateString = dateFormatter.string(from: self.dateRangePicker.endDate!)
        
        let yearDateFormatter = DateFormatter()
        yearDateFormatter.dateFormat = "yyyy"
        let yearString = yearDateFormatter.string(from: self.dateRangePicker.startDate!)
        
        self.dateLabel.text = "\(startDateString) - \(endDateString), \(yearString)"
    }
    
}

