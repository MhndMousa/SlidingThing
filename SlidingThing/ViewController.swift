//
//  ViewController.swift
//  SlidingThing
//
//  Created by Muhannad Alnemer on 7/24/19.
//  Copyright © 2019 Muhannad Alnemer. All rights reserved.
//

import UIKit
import PanModal




class ViewController: UIViewController {
    
    var hasLoaded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        view.backgroundColor = UIColor(red: 255, green: 224, blue: 124, alpha: 1)
        let button = UIButton(frame: CGRect(x: view.center.x/2, y: view.center.y, width: 200, height: 30))
        button.setTitle("Add tags & details", for: .normal)
        button.setTitleColor(UIColor(red: 0.23, green: 0.23, blue: 0.24, alpha: 1), for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(showSlide), for: .touchUpInside)
    }
    
    @objc func showSlide()  {
        presentPanModal(a())
    }
}




