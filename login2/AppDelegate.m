//
//  AppDelegate.m
//  login2
//
//  Created by White, Jordan on 6/25/14.
//  Copyright (c) 2014 Gannett Digital. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import <Parse/Parse.h>


@interface AppDelegate ()
            

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [Parse setApplicationId:@"cTWMa4yjafZA6U54SDMPmsH0uyNWy2VtkBtUIKKI"
                  clientKey:@"G6BqkwayQJvyHIORng64Vd3Vqgb3uzB0Z3XZyBUq"];
    //[PFFacebookUtils initializeFacebook];
    //[PFTwitterUtils initializeWithConsumerKey:@"" consumerSecret:@""];
    
    //Set defaults ACL
    PFACL *defaultACL = [PFACL ACL];
    [defaultACL setPublicReadAccess:YES];
    [PFACL setDefaultACL:defaultACL withAccessForCurrentUser:YES];
    
    
    //this is just calling the login view controller, it will be someplace else in the app.
    LoginViewController *loginVC = [[LoginViewController alloc]initWithStyle];
    self.window.rootViewController = loginVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}

/*Place Facebook Authentication here 

*/

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
