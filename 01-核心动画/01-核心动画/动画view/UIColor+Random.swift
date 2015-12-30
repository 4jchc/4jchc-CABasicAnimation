//
//  UIColor+Random.swift
//  06-03饼图
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit


    ///*****✅随机颜色color
    
    extension UIColor{
        
        ///*****✅随机颜色color
        class func randomColor() -> UIColor{
            /*
            颜色有两种表现形式 RGB RGBA
            RGB 24
            R,G,B每个颜色通道8位
            8的二进制 255
            R,G,B每个颜色取值 0 ~255
            120 / 255.0
            */
            let r:CGFloat = CGFloat(arc4random_uniform(UInt32(256))) / 255.0
            let g:CGFloat = CGFloat(arc4random_uniform(UInt32(256))) / 255.0
            let b:CGFloat = CGFloat(arc4random_uniform(UInt32(256))) / 255.0
            return UIColor(red: r, green: g, blue: b, alpha: 1)
        }
    }
