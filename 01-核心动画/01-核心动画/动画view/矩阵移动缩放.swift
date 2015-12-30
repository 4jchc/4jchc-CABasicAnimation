//
//  矩阵移动缩放.swift
//  06-06模仿UIimageview
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class juzheg: UIView {

    
    ///*****✅平移旋转缩放
    override func drawRect(rect: CGRect) {
        
        // Drawing code
        
        // 1.获取上下文
        let ctx:CGContextRef = UIGraphicsGetCurrentContext()!
        
        // 把ctx拷贝一份放在栈中
        
        // CGContextSaveGState(ctx)
        // 注意：你的路径一定放在上下文矩阵操作之后
        ////*****✅/ 平移上下文
        CGContextTranslateCTM(ctx, 50, 100);
        
        ////*****✅/ 旋转上下文
        
        CGContextRotateCTM(ctx, CGFloat(M_PI_4));
        
        ////*****✅/ 缩放上下文
        CGContextScaleCTM(ctx, 0.5, 1.2);
        // 2.拼接路径（绘图的信息）
        let path:UIBezierPath = UIBezierPath(rect: CGRectMake(-50, -100, 150, 200))
        
        // 3.路径添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        
        UIColor.randomColor().set()
        
        // 4.渲染
        CGContextStrokePath(ctx);
        
        CGContextFillPath(ctx);
    }
    
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.setNeedsDisplay()
    }

    

}
