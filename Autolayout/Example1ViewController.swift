//
//  Exampl1ViewController.swift
//  Autolayout
//
//  Created by Hanul Park on 3/13/15.
//  Copyright (c) 2015 Hanul.Park. All rights reserved.
//

import UIKit

class Example1ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        // 1. 파란뷰 생성
        var blueView: UIView = UIView()
        blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        
        // 2. 뷰에 추가
        self.view.addSubview(blueView)
        
        // 3. 뷰 딕셔너리 생성
        let viewsDictionary = ["blueView":blueView]
        
        // 4. 파란뷰의 크기 설정
        let blueConstaintV = NSLayoutConstraint.constraintsWithVisualFormat("V:[blueView(100)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        let blueConstaintH = NSLayoutConstraint.constraintsWithVisualFormat("H:[blueView(100)]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        
        // 5. 뷰 정렬(가로)을 정의
        let constraintPosH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[blueView]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        // 6. 뷰 정렬(세로)을 정의
        let constraintPosV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-130-[blueView]",
            options: NSLayoutFormatOptions.allZeros,
            metrics: nil,
            views: viewsDictionary)
        
        // 정의한 정렬을 적용
        blueView.addConstraints(blueConstaintV)
        blueView.addConstraints(blueConstaintH)
        
        self.view.addConstraints(constraintPosV)
        self.view.addConstraints(constraintPosH)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}