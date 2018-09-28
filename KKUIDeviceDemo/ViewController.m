//
//  ViewController.m
//  KKUIDeviceDemo
//
//  Created by K3 on 2018/9/13.
//  Copyright © 2018年 Crazy凡. All rights reserved.
//

#import "ViewController.h"
#import <KKUIDevice/KKUIDevice.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", [UIDevice.currentDevice kkHardware]);
    NSLog(@"%@", [UIDevice.currentDevice kkModel]);

    self.view.backgroundColor = UIColor.whiteColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
