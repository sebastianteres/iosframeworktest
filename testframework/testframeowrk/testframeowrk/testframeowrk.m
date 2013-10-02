//
//  testframeowrk.m
//  testframeowrk
//
//  Created by Sebastian Perez Teres on 01/10/13.
//  Copyright (c) 2013 Sebastian Perez Teres. All rights reserved.
//

#import <StoreKit/StoreKit.h>
#import "testframeowrk.h"
#import "TestViewController.h"

@implementation testframeowrk

- (void) showViewFromFramwork: (UIViewController*) parentController {
    TestViewController* controller = [[TestViewController alloc] init];
    [parentController presentViewController: controller animated:YES completion:nil];
}

@end
