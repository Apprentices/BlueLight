//
//  BLMainViewController.m
//  BlueLight
//
//  Created by DL Admin on 8/7/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLMainViewController.h"
#import "BLWelcomeView.h"
#import <Parse/Parse.h>

@interface BLMainViewController ()

@end

@implementation BLMainViewController

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

- (IBAction)logoutButtonTapped:(id)sender {
    [PFUser logOut];
    BLWelcomeView *welcomeView = [[BLWelcomeView alloc] initWithNibName:@"BLWelcomeView" bundle:nil];
    [self.navigationController pushViewController:welcomeView animated:YES];

}

@end
