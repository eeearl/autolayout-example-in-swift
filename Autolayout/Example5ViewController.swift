//
//  Example5ViewController.swift
//  Autolayout
//
//  Created by Hanul Park on 3/13/15.
//  Copyright (c) 2015 Hanul.Park. All rights reserved.
//

import UIKit

class Example5ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        // 파란뷰 생성
        var blueView: UIView = UIView()
        blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        
        var redView: UIView = UIView()
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        redView.backgroundColor = UIColor(red:1.0, green:0.0, blue: 0.0, alpha: 1.0)
        
        // 뷰에 추가
        self.view.addSubview(redView)
        self.view.addSubview(blueView)

        
        // 뷰 딕셔너리 생성
        let viewsDictionary = ["blueView":blueView, "redView":redView]
        
        // metrics 생성
        let metrics = ["hSpacing":20, "vSpacing":10]
        
        // 뷰 정렬(가로)을 정의
        let constraintPosH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-hSpacing-[redView]-hSpacing-|",
            options: NSLayoutFormatOptions.allZeros,
            metrics: metrics,
            views: viewsDictionary)
        // 뷰 정렬(세로)을 정의
        let constraintPosV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-vSpacing-[redView]-vSpacing-|",
            options: NSLayoutFormatOptions.allZeros,
            metrics: metrics,
            views: viewsDictionary)
        
        self.view.addConstraints(constraintPosH)
        self.view.addConstraints(constraintPosV)
        
        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: redView, attribute: NSLayoutAttribute.Width, multiplier: 0.5, constant: 0.0))
        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: redView, attribute: NSLayoutAttribute.Height, multiplier: 0.5, constant: 0.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: redView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0))
        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: redView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0.0))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}