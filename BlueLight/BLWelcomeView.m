//
//  BLWelcomeView.m
//  BlueLight
//
//  Created by DL Admin on 8/6/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLWelcomeView.h"
#import "BLSignUpViewController.h"
#import "BLMainViewController.h"

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

#pragma mark - Button Actions

- (IBAction)signInButtonPressed:(id)sender {
    
    PFLogInViewController *login = [[PFLogInViewController alloc] init];
    login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsDismissButton;
    login.delegate = self;
    [self presentViewController:login animated:YES
                     completion:NULL];
    
}

- (IBAction)signUpButtonPressed:(id)sender {
    
    BLSignUpViewController *signUpViewController = [[BLSignUpViewController alloc] initWithNibName:@"BLSignUpViewController" bundle:nil];
    [self.navigationController pushViewController:signUpViewController animated:YES];
}

#pragma mark - Login Actions

- (void)logInViewController:(PFLogInViewController *)logInController didLogInUser: (PFUser *)user {
    
    BLMainViewController *mainViewController = [[BLMainViewController alloc] initWithNibName:@"BLMainViewController" bundle:nil];
    [self.navigationController pushViewController:mainViewController animated:YES];
    [self dismissViewControllerAnimated:YES completion:NULL];
    NSLog(@"User has signed in");
}


@end
