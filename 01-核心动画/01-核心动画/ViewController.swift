//
//  ViewController.swift
//  01-核心动画
//
//  Created by 蒋进 on 15/12/30.
//  Copyright © 2015年 sijichcai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



        
        var imagV:HMImgeView = HMImgeView()
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let imgV:HMImgeView = HMImgeView(frame: CGRectMake(30, 30, 200, 200))
            
            imgV.image = UIImage(named: "你有我牛B吗")!
            // imagV.seImage(image)
            self.view.addSubview(imgV)
            
            self.view.addSubview(demoView)
            
            
        }
        //    ///*****✅画线里面有touchesBegan就执行画线类的方法
        //    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //        let i:UIImage = UIImage(named: "未来苹果CEO")!
        //        imagV.seimage(i)
        //
        //    }
    
    
    
    
    

    
    lazy var demoView:UIView = {
        
        let ani = UIView(frame: CGRectMake(50, 50, 50, 50))

        ani.backgroundColor = UIColor.randomColor()
        return ani
    }()

    
    /**
    CAKeyframeAnimation path/values
    CABasicAnimation    fromValue/toValue
    
    在实例化动画的时候，指定图层的"可动画属性"
    */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let anim1:CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")
        anim1.path = UIBezierPath(ovalInRect: CGRectMake(50, 50, 300, 300)).CGPath;
        
        
        let anim3:CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        anim3.values = [1, 0.1, 2];
        
        
        let anim2:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        anim2.toValue = (2 * M_PI)
        

        let group:CAAnimationGroup = CAAnimationGroup()
        group.animations = [anim1, anim2, anim3];
        
        group.duration = 2.0;
        group.repeatCount = MAXFLOAT;
        
        self.demoView.layer.addAnimation(group, forKey: nil)
        
    }

    


}

