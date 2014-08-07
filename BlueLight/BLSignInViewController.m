//
//  BLSignInViewController.m
//  BlueLight
//
//  Created by DL Admin on 8/7/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLSignInViewController.h"
#import "BLMainViewController.h"

@interface BLSignInViewController ()

@end

@implementation BLSignInViewController

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
    
    if (![PFUser currentUser]) {
        
        PFLogInViewController *login = [[PFLogInViewController alloc] init];
        login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton;
        login.delegate = self;
        [self presentViewController:login animated:NO
                         completion:NULL];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)userDidLogIn {
    [PFUser logInWithUsernameInBackground:@"myname" password:@"mypass"
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            
                                            BLMainViewController *mainViewController = [[BLMainViewController alloc] initWithNibName:@"BLMainViewController" bundle:nil];
                                            [self.navigationController pushViewController:mainViewController animated:YES];
                                        }
                                    }];
}



@end
