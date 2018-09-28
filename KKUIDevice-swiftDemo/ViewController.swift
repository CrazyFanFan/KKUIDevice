//
//  ViewController.swift
//  KKUIDevice-swiftDemo
//
//  Created by K3 on 2018/9/13.
//  Copyright © 2018年 Crazy凡. All rights reserved.
//

import UIKit
import KKUIDevice

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        NSLog("%@", UIDevice.current.k3.hardware)
        NSLog("%@", UIDevice.current.k3.model)

        view.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

