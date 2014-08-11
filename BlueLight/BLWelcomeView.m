//
//  BLWelcomeView.m
//  BlueLight
//
//  Created by DL Admin on 8/6/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLWelcomeView.h"
#import "BLMainViewController.h"


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
    self.title = @"Welcome";
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
    
    PFSignUpViewController *registration = [[PFSignUpViewController alloc] init];
    registration.delegate = self;
    registration.fields = PFSignUpFieldsDefault | PFSignUpFieldsAdditional;
    
    //Customize placeholder text for "Additional" to "Phone"
    registration.signUpView.additionalField.placeholder = @"Phone";
    registration.signUpView.passwordField.placeholder = @"Password";
    
    [self presentViewController:registration animated:YES completion:NULL];
    
}

#pragma mark - Login Actions

- (void)logInViewController:(PFLogInViewController *)logInController didLogInUser: (PFUser *)user {
    
    [self shouldLoadMainView];
}

- (void)signUpViewController:(PFSignUpViewController *)signUpController didSignUpUser:(PFUser *)user {

    [self shouldLoadMainView];
}

- (void)shouldLoadMainView {
    
    BLMainViewController *mainViewController = [[BLMainViewController alloc] initWithNibName:@"BLMainViewController" bundle:nil];
    [self.navigationController pushViewController:mainViewController animated:YES];
    [self dismissViewControllerAnimated:YES completion:NULL];
}



@end
