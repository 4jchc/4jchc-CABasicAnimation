//
//  HMxuehua.swift
//  06-06模仿UIimageview
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class HMxuehua: UIView {
    var snowY:Int = 0
    var snowX:Int = 20
    var count:Int = 10
    ////*****✅/ 加载xib完毕就调用
    override func awakeFromNib() {
        
        ///*****✅每隔0.1秒调用一次
        NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "setNeedsDisplay", userInfo: nil, repeats: true)

        // iphone每秒刷新60次
        ////*****✅/ 屏幕刷新的时候就会触发
        let lin:CADisplayLink = CADisplayLink(target: self, selector: "setNeedsDisplay")
        lin.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
       
    }

    override func drawRect(rect: CGRect) {
        
        snowY += 1;
        
        
        for var i = 0 ;i < count; i++ {
            
        let image:UIImage = UIImage(named: "雪花")!
        
        image.drawAtPoint(CGPointMake(CGFloat(snowX * i), CGFloat(snowY)))

        if (snowY >= 620) {
            snowY = 0;
        }
        }
    }

}
