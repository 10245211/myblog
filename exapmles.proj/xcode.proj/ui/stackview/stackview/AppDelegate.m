//
//  AppDelegate.m
//  stackview
//
//  Created by CZ on 5/15/16.
//  Copyright © 2016 projm. All rights reserved.
//

#import "AppDelegate.h"
#import "SignalVC.h"
#import "AttributeVC.h"
#import "NestedVC.h"
#import "DynamicVC.h"

@interface AppDelegate ()
@property (nonatomic, strong) UITabBarController *rootVC;
@property (strong, nonatomic) SignalVC *signalVC;
@property (strong, nonatomic) AttributeVC *attrVC;
@property (strong, nonatomic) NestedVC *nestedVC;
@property (strong, nonatomic) DynamicVC *dynmaicVC;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    _rootVC = [[UITabBarController alloc] init];
   _signalVC =(SignalVC *) [[UIStoryboard storyboardWithName:@"signal" bundle:nil] instantiateViewControllerWithIdentifier:@"signal_vc"];
   _attrVC =(AttributeVC *) [[UIStoryboard storyboardWithName:@"attribute" bundle:nil] instantiateViewControllerWithIdentifier:@"attribute_vc"];
   _nestedVC =(NestedVC *) [[UIStoryboard storyboardWithName:@"nested" bundle:nil] instantiateViewControllerWithIdentifier:@"nested_vc"];
   _dynmaicVC =(DynamicVC *) [[UIStoryboard storyboardWithName:@"dynamic" bundle:nil] instantiateViewControllerWithIdentifier:@"dynamic_vc"];
    _rootVC.viewControllers = @[_signalVC, _attrVC, _nestedVC, _dynmaicVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = _rootVC;
    [self.window makeKeyAndVisible]; // Should Add This in OC
    
    return YES;
}

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
