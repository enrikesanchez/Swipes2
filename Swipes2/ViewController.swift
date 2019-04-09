//
//  ViewController.swift
//  Swipes2
//
//  Created by esanchez on 4/8/19.
//  Copyright © 2019 Tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vertical = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.reportVerticalSwipe(_:)))
        vertical.direction = [.up, .down]
        view.addGestureRecognizer(vertical)
        
        let horizontal = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.reportHorizontalSwipe(_:)))
        horizontal.direction = [.left, .right]
        view.addGestureRecognizer(horizontal)
    }
    
    @objc func reportHorizontalSwipe(_ recognizer:UIGestureRecognizer) {
        label.text = "Horizontal swipe detected"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.label.text = ""
        }
    }
    
    @objc func reportVerticalSwipe(_ recognizer:UIGestureRecognizer) {
        label.text = "Vertical swipe detected"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.label.text = ""
        }
    }}

