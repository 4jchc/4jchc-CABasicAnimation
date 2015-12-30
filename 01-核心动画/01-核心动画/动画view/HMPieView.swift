//
//  HMPieView.swift
//  06-03饼图
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class HMPieView: UIView {

    override func drawRect(rect: CGRect) {

        draYuan()
        //drawPie()
}


    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        ///*****✅重新画--刷新
        self.setNeedsDisplay()

    }

    ///*****✅占比圆饼
    func draYuan(){
        ///*****✅占比
        let data:NSArray = [25,25,10,15,15,10];
        ////*****✅/ 1.获取上下文
        let ctx: CGContextRef  = UIGraphicsGetCurrentContext()!
        ////*****✅/ 2.拼接路径
        let center:CGPoint  = CGPointMake(125, 125);
        let radius:CGFloat = 120;
        var startA:CGFloat = 0;
        var angle:CGFloat = 0;
        var endA:CGFloat = 0;
        //let number:NSNumber!
        
        for number in data {
        // 2.拼接路径
        startA = endA
        ///*****✅百分比CGFloat(number.integerValue) / CGFloat(100.0)
        angle = CGFloat(number.integerValue) / CGFloat(100.0) * CGFloat(M_PI * 2)
        endA = startA + angle;
        let path:UIBezierPath  = UIBezierPath(arcCenter: center, radius: radius, startAngle: startA, endAngle: endA, clockwise: true)
        path.addLineToPoint(center)
        
        UIColor.randomColor().setFill()
        path.lineWidth = 20
        
        ////*****✅/ 添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        ////*****✅/ 渲染
        CGContextFillPath(ctx);
        
        }
    }
///*****💗占比圆饼未封装
    func drawPie(){
    ////*****✅/ 1.获取上下文
        let ctx: CGContextRef  = UIGraphicsGetCurrentContext()!
    ////*****✅/ 2.拼接路径
        let center:CGPoint  = CGPointMake(125, 125);
        let radius:CGFloat = 120;
        var startA:CGFloat = 0;
        var angle:CGFloat = 0;
        var endA:CGFloat = 0;
        ////*****✅/ 第一个扇形
         angle = 25.0 / 100.0 * CGFloat(M_PI * 2)
         endA = startA + angle;
        let path:UIBezierPath  = UIBezierPath(arcCenter: center, radius: radius, startAngle: startA, endAngle: endA, clockwise: true)
        path.addLineToPoint(center)
    ////*****✅/ 添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        UIColor.randomColor().setFill()
        path.lineWidth = 20
    ////*****✅/ 渲染
    CGContextFillPath(ctx);
  
    ////*****✅/ 第二个扇形
    startA = endA;
    angle = 25 / 100.0 * CGFloat(M_PI * 2)
    endA = startA + angle;
        let path1:UIBezierPath  = UIBezierPath(arcCenter: center, radius: radius, startAngle: startA, endAngle: endA, clockwise: true)
        path1.addLineToPoint(center)
        CGContextAddPath(ctx, path1.CGPath);
        UIColor.randomColor().setFill()
        CGContextFillPath(ctx);

    ////*****✅/ 第三个扇形
    startA = endA;
    angle = 50 / 100.0 * CGFloat(M_PI * 2)
    endA = startA + angle;
        let path2:UIBezierPath  = UIBezierPath(arcCenter: center, radius: radius, startAngle: startA, endAngle: endA, clockwise: true)
        path2.addLineToPoint(center)
        ////*****✅/ 添加到上下文
        CGContextAddPath(ctx, path2.CGPath);
        UIColor(red: 1, green: 114, blue: 208, alpha: 1).setFill()
        UIColor.randomColor().setFill()
        ////*****✅/ 渲染
        CGContextFillPath(ctx);

        }
    }
