//
//  ViewController.swift
//  KKUIDevice-swiftDemo
//
//  Created by C凡 on 2018/9/13.
//  Copyright © 2018年 C凡. All rights reserved.
//

import UIKit
import KKUIDevice

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        NSLog("%@", UIDevice.current.kk.hardware)
        NSLog("%@", UIDevice.current.kk.model)

        view.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
