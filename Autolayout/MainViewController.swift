//
//  File.swift
//  Autolayout
//
//  Created by Hanul Park on 3/13/15.
//  Copyright (c) 2015 Hanul.Park. All rights reserved.
//

import UIKit

class MainViewContrller: UIViewController {

    @IBAction func clickExam1Button(sender: UIButton) {
        var viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Exam1") as UIViewController
        self.navigationController?.pushViewController(viewcontroller, animated: false)
    }
    
    @IBAction func clickExam2Button(sender: UIButton) {
        var viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Exam2") as UIViewController
        self.navigationController?.pushViewController(viewcontroller, animated: false)
    }
    
    @IBAction func clickExam3Button(sender: UIButton) {
        var viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Exam3") as UIViewController
        self.navigationController?.pushViewController(viewcontroller, animated: false)
    }
    
    @IBAction func clickExam4Button(sender: UIButton) {
        var viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Exam4") as UIViewController
        self.navigationController?.pushViewController(viewcontroller, animated: false)
    }
    
    @IBAction func clickExam5Button(sender: UIButton) {
        var viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Exam5") as UIViewController
        self.navigationController?.pushViewController(viewcontroller, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
