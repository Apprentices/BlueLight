//
//  BLWelcomeViewSpec.m
//  BlueLight
//
//  Created by DL Admin on 8/7/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "BLWelcomeView.h"
#import "BLSignUpViewController.h"

@interface BLWelcomeView (internalMethods)

- (IBAction)signUpButtonPressed:(id)sender;

@end

SPEC_BEGIN(BLWelcomeViewSpec)

describe(@"BLWelcomeView", ^{
    it(@"should have a sign up button", ^{
        UIButton *signUpButton = [UIButton nullMock];
        [[signUpButton shouldNot] beNil];
    });
    
    it(@"should go to sign up page when signUpButton is tapped", ^{
        BLWelcomeView *welcomeView = [[BLWelcomeView alloc] init];
        BLSignUpViewController *signUpViewController = [BLSignUpViewController nullMock];
        UINavigationController *navController = [UINavigationController nullMock];
        
        [navController pushViewController:signUpViewController animated:YES];
        [[welcomeView should]respondToSelector:@selector(signUpButtonPressed:)];
    });
});

SPEC_END
