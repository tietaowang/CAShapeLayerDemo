//
//  ViewController.swift
//  CAShapeLayerDemo
//
//  Created by zhipeng on 2017/11/3.
//  Copyright © 2017年 com.guoshuobigdata.dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shapLayerUse()
        self.view.backgroundColor = UIColor.yellow
    }
    
    func shapLayerUse(){
          var  shapelayer = CAShapeLayer()
          shapelayer.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
          var path = UIBezierPath(ovalIn: CGRect(x: 100, y: 100, width: 100, height: 100)) // 绘制区域
          shapelayer.path = path.cgPath
          shapelayer.fillColor = UIColor.clear.cgColor
         shapelayer.lineWidth = 2
        shapelayer.strokeColor = UIColor.red.cgColor
        self.view.layer .addSublayer(shapelayer)
       var pathAnima =  CABasicAnimation(keyPath: "strokeEnd")
        pathAnima.duration = 3.0
        pathAnima.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        pathAnima.fromValue = 0
        pathAnima.toValue = 1
        pathAnima.fillMode = kCAFillModeForwards
        pathAnima.isRemovedOnCompletion = false
        shapelayer .add(pathAnima, forKey: "strokeEndAnimation")
//        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//        shapeLayer.frame = _demoView.bounds;
//        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:_demoView.bounds];
//        shapeLayer.path = path.CGPath;
//        shapeLayer.fillColor = [UIColor clearColor].CGColor;
//        shapeLayer.lineWidth = 2.0f;
//        shapeLayer.strokeColor = [UIColor redColor].CGColor;
//        [_demoView.layer addSublayer:shapeLayer];
//        CABasicAnimation *pathAnima = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
//        pathAnima.duration = 3.0f;
//        pathAnima.timingFunction = [CAMediaTimingFunction    functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//        pathAnima.fromValue = [NSNumber numberWithFloat:0.0f];
//        pathAnima.toValue = [NSNumber numberWithFloat:1.0f];
//        pathAnima.fillMode = kCAFillModeForwards;
//        pathAnima.removedOnCompletion = NO;
//        [shapeLayer addAnimation:pathAnima forKey:@"strokeEndAnimation"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

