//
//  testitiy.m
//  testitiy
//
//  Created by Sebastian Perez Teres on 01/10/13.
//  Copyright (c) 2013 Sebastian Perez Teres. All rights reserved.
//

#import "testitiy.h"
#import "TestViewController.h"

@implementation testitiy

- (NSString*) sayHi : (NSString*) name {
    return [NSString stringWithFormat:@"Hello %@", name];
}

- (void) displayView:(UIViewController *)parentController {
    TestViewController* controller = [[TestViewController alloc] init];
    [parentController presentViewController:controller animated:YES completion:nil];
    //[parentController.navigationController pushViewController:controller animated:YES];
}

@end
