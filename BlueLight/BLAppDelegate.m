//
//  BLAppDelegate.m
//  BlueLight
//
//  Created by DL Admin on 8/6/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "BLAppDelegate.h"
#import "BLWelcomeView.h"
#import <Parse/Parse.h>
#import "BLMainViewController.h"

@implementation BLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"VEgz4plyPvW8wteXW4wFc26ltjmMiAGyLoNskpVs"
                  clientKey:@"o5Sp1PkwjPHArLFJNmKszwt24vayFkIHJRWN0Un6"];
    
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    if (![PFUser currentUser]) {

    BLWelcomeView *welcomeView = [[BLWelcomeView alloc] initWithNibName:@"BLWelcomeView" bundle:nil];
    self.navController = [[UINavigationController alloc] initWithRootViewController:welcomeView];
    }
    
    else {
    
    BLMainViewController *mainView = [[BLMainViewController alloc] initWithNibName:@"BLMainViewController" bundle:nil];
    self.navController = [[UINavigationController alloc] initWithRootViewController:mainView];
        
    }
    
    self.window.rootViewController = self.navController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
