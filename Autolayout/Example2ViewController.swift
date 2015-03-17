//
//  ViewController.swift
//  Autolayout
//
//  Created by Hanul Park on 9/22/14.
//  Copyright (c) 2014 Hanul.Park. All rights reserved.
//

import UIKit

class Example2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        // 1. 파란뷰 생성
        var blueView: UIView = UIView()
        blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)

        // 1. 빨간뷰 생성
        var redView: UIView = UIView()
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        redView.backgroundColor = UIColor(red: 1.0, green: 0.01, blue: 0.07, alpha: 1.0)
        
        // 2. 뷰에 추가
        self.view.addSubview(blueView)
        self.view.addSubview(redView)
        
        // 3. 뷰 딕셔너리 생성
        let viewsDictionary = ["blueView":blueView, "redView":redView]
        
        // 4. 파란뷰의 크기 설정
        let blueConstaintV = NSLayoutConstraint.constraintsWithVisualFormat("V:[blueView(100)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        let blueConstaintH = NSLayoutConstraint.constraintsWithVisualFormat("H:[blueView(100)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        
        // 빨간뷰의 크기 설정
        let redConstaintV = NSLayoutConstraint.constraintsWithVisualFormat("V:[redView(200)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        let redConstaintH = NSLayoutConstraint.constraintsWithVisualFormat("H:[redView(100)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)

        // 5. 뷰 정렬(가로)을 정의
        let constraintPosH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[blueView]-10-[redView]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        // 뷰 정렬(세로)을 정의
        let constraintPosV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-130-[blueView]-20-[redView]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        
        blueView.addConstraints(blueConstaintV)
        blueView.addConstraints(blueConstaintH)
        redView.addConstraints(redConstaintV)
        redView.addConstraints(redConstaintH)
        
        self.view.addConstraints(constraintPosV)
        self.view.addConstraints(constraintPosH)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

