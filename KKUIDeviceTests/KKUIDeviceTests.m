//
//  KKUIDeviceTests.m
//  KKUIDeviceTests
//
//  Created by K3 on 2018/5/21.
//  Copyright © 2018年 Crazy凡. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KKUIDevice/KKUIDevice.h>

@interface KKUIDeviceTests : XCTestCase

@end

@implementation KKUIDeviceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"%@", [UIDevice.currentDevice KKHardware]);
    NSLog(@"%@", [UIDevice.currentDevice KKModel]);
    NSLog(@"%@", [UIDevice.currentDevice KKAdvertisingIdentifier]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
