//
//  HMBarView.swift
//  06-04柱状图
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.


import UIKit

class HMBarView: UIView {


    override func drawRect(rect: CGRect) {
        // Drawing code
        let date:NSArray = [25,25,50]
        let count:Int = date.count
        
        let w:CGFloat = (rect.size.width) / CGFloat(2 * count - 1);
        var h:CGFloat = 0;
        var x:CGFloat = 0;
        var y:CGFloat = 0;
        let viewH:CGFloat = rect.size.height;
        // 1.获取上下文
        let ctx:CGContextRef = UIGraphicsGetCurrentContext()!
        var i:Int = 0
        for (i; i < count; i++) {
            h = viewH * CGFloat(date[i].integerValue) / 100.0

            x = 2 * w * CGFloat(i)
            y = viewH - h;
            // 2.拼接路径
            let path:UIBezierPath = UIBezierPath(rect: CGRectMake(x, y, w, h))
            
            // 3.添加路径到上下文
            CGContextAddPath(ctx, path.CGPath);
            UIColor.randomColor().setFill()
            
            // 4.渲染
            CGContextFillPath(ctx);
        }
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.setNeedsDisplay()
    }
    

    
}
