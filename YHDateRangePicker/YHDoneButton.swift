//
//  YHDateRangePicekr
//
//  Created by YuHsuan CHI on 2017/6/3.
//  Copyright © 2017 yuhsuan19. All rights reserved.
//
import UIKit

class YHDoneButton: UIButton {
    let mainColor: UIColor
    let subColor: UIColor
    
    init(frame: CGRect, mainColor: UIColor, subColor: UIColor) {
        self.mainColor = mainColor
        self.subColor = subColor
        super.init(frame: frame)
        
        self.buildView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func buildView() {
        // shape
        self.layer.cornerRadius = self.frame.size.width / 2
        
        // color
        self.backgroundColor = subColor
        self.layer.borderWidth = 2
        self.layer.borderColor = mainColor.cgColor
        
        // draw tick icon
        let line = CAShapeLayer()
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: 15, y: 26))
        linePath.addLine(to: CGPoint(x: 23, y: 34))
        linePath.move(to: CGPoint(x: 33.33, y: 18))
        linePath.addLine(to: CGPoint(x: 23, y: 34))

        line.path = linePath.cgPath
        line.strokeColor = mainColor.cgColor
        line.lineWidth = 2
        line.lineJoin = kCALineJoinRound
        self.layer.addSublayer(line)
    }
}
