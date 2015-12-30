//
//  HMview.swift
//  06-04uikit演练
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class HMview: UIView {
///*****✅画图片
    override func drawRect(rect: CGRect) {
        
        let image:UIImage = UIImage(named: "头像")!
        
        image.drawAtPoint(CGPointZero)
    
        image.drawInRect(CGRectMake(0, 0, 100, 100))


        let pimage:UIImage = UIImage(named: "001")!
        ///*****✅平铺
        pimage.drawAsPatternInRect(rect)
        ///*****✅/ 设置裁剪区域，超出裁剪区域的都会被裁剪掉
        UIRectClip(CGRectMake(0, 0, 100, 100));
        drawText()

    }
    
///*****✅画文字
   func drawText(){
    let text:NSString = "hello motolosdmotolosdmotolosdmotolosdmotolosdmototolosdmotolosdmototolosdmotolosdmototolosdmotolosdmototolosdmotolosdmotolosdm"
    
    let textFrame:CGRect = CGRectMake(0, 0, 250, 250)

    let dict:NSDictionary = [NSFontAttributeName:UIFont.systemFontOfSize(20),NSForegroundColorAttributeName:UIColor.redColor(),
        NSStrokeWidthAttributeName:5]
        UIRectFill(textFrame)
    ///*****✅不会自动换行
    text.drawAtPoint(CGPointZero, withAttributes: dict as? [String : AnyObject])
    ///*****✅会自动换行
    text.drawInRect(textFrame, withAttributes:dict as? [String : AnyObject])

    }


}
