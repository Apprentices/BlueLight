//
//  BLWelcomeView.m
//  BlueLight
//
//  Created by DL Admin on 8/6/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLWelcomeView.h"
#import "BLSignUpViewController.h"
#import "BLSignInViewController.h"

@interface BLWelcomeView ()


@end

@implementation BLWelcomeView

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signInButtonPressed:(id)sender {
    
    BLSignInViewController *signInViewController = [[BLSignInViewController alloc] initWithNibName:@"BLSignInViewController" bundle:nil];
    [self.navigationController pushViewController:signInViewController animated:YES];
    
}

- (IBAction)signUpButtonPressed:(id)sender {
    
    BLSignUpViewController *signUpViewController = [[BLSignUpViewController alloc] initWithNibName:@"BLSignUpViewController" bundle:nil];
    [self.navigationController pushViewController:signUpViewController animated:YES];
}

@end
