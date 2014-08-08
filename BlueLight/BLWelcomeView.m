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

@property (nonatomic, weak) PFSignUpView *signUpView;

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
    
    PFSignUpViewController *registration = [[PFSignUpViewController alloc] init];
    registration.delegate = self;
    registration.fields = PFSignUpFieldsDefault | PFSignUpFieldsAdditional;
    
    //Customize placeholder text for "Additional" to "Phone"
    registration.signUpView.additionalField.placeholder = @"Phone";
    registration.signUpView.passwordField.placeholder = @"Password";
    
    [self presentViewController:registration animated:YES completion:NULL];
    
}

@end
