//
//  MainViewController.m
//  Testapp
//
//  Created by Sebastian Perez Teres on 02/10/13.
//  Copyright (c) 2013 Sebastian Perez Teres. All rights reserved.
//

#import "MainViewController.h"
#import <testitiy/testitiy.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    testitiy* framework = [[testitiy alloc] init];
    NSString* msg = [NSString stringWithFormat:@"Calling sayHi method on framework...\n result: %@", [framework sayHi:@"John"]];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"sayHi method call" message:msg delegate:self cancelButtonTitle:@"Ok, show me the view" otherButtonTitles:nil, nil];
    [alert show];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if(buttonIndex == [alertView cancelButtonIndex]) {
        testitiy* framework = [[testitiy alloc] init];
        [framework displayView:self];
    }
}

@end
