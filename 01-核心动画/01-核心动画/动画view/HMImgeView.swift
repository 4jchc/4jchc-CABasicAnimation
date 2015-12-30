//
//  HMImgeView.swift
//  06-06模仿UIimageview
//
//  Created by 蒋进 on 15/10/10.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class HMImgeView: UIView {
    var ii: Bool = false
    var image:UIImage = UIImage()
    
    func seimage(image:UIImage){
        
        self.image = image;
        
        self.setNeedsDisplay()

        
    }
    override func drawRect(rect: CGRect) {
        
       self.setNeedsDisplay()
        image.drawInRect(rect)
    }
///*****✅切换图片点击的时候
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        ii = !ii
        self.setNeedsDisplay()
        let iI:UIImage!
       iI = (ii == true) ? UIImage(named: "未来苹果CEO") : UIImage(named: "你有我牛B吗")!
      //  let i:UIImage = UIImage(named: "未来苹果CEO")!
        seimage(iI)
    }

}
