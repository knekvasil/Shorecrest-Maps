//
//  AppDelegate.m
//  Shorecrest Maps
//
//  Created by admin on 4/23/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "AppDelegate.h"
#import "MapViewController.h"
#import "TableViewController.h"
#import "VideoViewController.h"
#import "AnimationViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
    
    [[UINavigationBar appearance]setBarTintColor:newBackgroundColor];
    [[UINavigationBar appearance]setTranslucent:NO];
    
    [[UITabBar appearance] setTranslucent:NO];
    [[UITabBar appearance] setBarTintColor:newBackgroundColor];
    [[UITabBar appearance] setTintColor:newCellColor];
//    [[UITabBar appearance] setSelectedImageTintColor:newCellColor];
    
//    [self.navigationController.navigationBar setTranslucent:NO];
    
    
//    UITabBarController *tabBar = [[UITabBarController alloc]init];
//    
//    [[tabBar view] setTintColor:[UIColor greenColor]];
//    
//    MapViewController *wvc = [[MapViewController alloc]init];
//    TableViewController *tvc = [[TableViewController alloc]init];
//    VideoViewController *vvc = [[VideoViewController alloc]init];
    AnimationViewController *avc = [[AnimationViewController alloc]init];
    
    
//    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:wvc];
//    
//    UINavigationController *navController2 = [[UINavigationController alloc]initWithRootViewController:tvc];
//
//    
//    NSArray *viewControllers = [[NSArray alloc]initWithObjects:navController,navController2, vvc, nil];
    
    [[self window]setRootViewController:avc];

//    [tabBar setViewControllers:viewControllers];
    
    
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
