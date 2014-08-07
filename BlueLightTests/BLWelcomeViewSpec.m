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

	});
	
SPEC_END
