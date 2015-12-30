//
//  zhanding.swift
//  06-06模仿UIimageview
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class zhanding: UIView {

    
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        // 1.获取上下文
        let ctx:CGContextRef = UIGraphicsGetCurrentContext()!
     
        // 把ctx拷贝一份放在栈中
        CGContextSaveGState(ctx)
        
        // 2.拼接路径（绘图的信息）
        let path:UIBezierPath = UIBezierPath()
        path.moveToPoint(CGPointMake(10, 125))
        path.addLineToPoint(CGPointMake(240, 125))
        // 3.路径添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        
        // 设置绘图的状态
        UIColor.randomColor().set()

        CGContextSetLineWidth(ctx, 10);
        ///*****✅圆角
        
        CGContextSetLineCap(ctx, CGLineCap.Round)

        // 4.渲染
        CGContextStrokePath(ctx);
        
        
        // 第二根线
        let path1:UIBezierPath = UIBezierPath()
        path1.moveToPoint(CGPointMake(125, 10))
        path1.addLineToPoint(CGPointMake(125, 240))

        CGContextAddPath(ctx, path1.CGPath);
        
        // 把栈顶上下文取出来，替换当前上下文
        CGContextRestoreGState(ctx);
        
        // 设置绘图的状态
        //    [[UIColor blackColor] set];
        //    CGContextSetLineWidth(ctx, 1);
        //    CGContextSetLineCap(ctx, kCGLineCapButt);
        
        
        // 4.渲染
        CGContextStrokePath(ctx);
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        ///*****✅重新画--刷新
        self.setNeedsDisplay()
        
    }


}
